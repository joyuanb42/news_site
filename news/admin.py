from django.contrib import admin
from django.db.models import Count
from django.utils.html import format_html
from .models import News, Author
from django.urls import reverse
from django.urls import path
from django.shortcuts import get_object_or_404
from django.shortcuts import render

admin.site.site_header = '新闻信息系统'
admin.site.site_title = '新闻信息系统'
admin.site.index_title = '新闻信息系统'
admin.site.site_logo = 'news/image/news.png'


@admin.register(News)
class NewsAdmin(admin.ModelAdmin):
    list_display = ('title_link', 'publisher_date', 'author')
    list_filter = ('publisher_date', 'author')
    search_fields = ('title', 'content')

    def get_urls(self):
        urls = super().get_urls()
        custom_urls = [
            path('detail/<int:pk>/', self.admin_site.admin_view(self.news_detail_view), name='news-detail'),
        ]
        return custom_urls + urls

    def news_detail_view(self, request, pk):
        news = get_object_or_404(News, pk=pk)
        context = dict(
            self.admin_site.each_context(request),
            news=news
        )
        return render(request, 'admin/news_detail.html', context)

    def title_link(self, obj):
        return format_html('<a href="{}">{}</a>', reverse('admin:news-detail', args=[obj.pk]), obj.title)

    title_link.short_description = 'Title'
    list_display_links = ('title_link',)

    actions = ['chartbutton']

    def chartbutton(self, request, queryset):

        data = queryset.values('author').annotate(count=Count('id')).order_by('-count')
        labels = [item['author'] for item in data]
        data = [item['count'] for item in data]

        return render(request, 'admin/news_statistics.html', {'labels': labels, 'data': data})

    chartbutton.short_description = '数据统计'
    chartbutton.type = 'success'
    chartbutton.icon = 'fa-solid fa-chart-line'


@admin.register(Author)
class AuthorAdmin(admin.ModelAdmin):
    list_display = ('name', 'age', 'email')
