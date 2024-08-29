from django.db import models

# Create your models here.
class News(models.Model):
    id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=50)
    content = models.TextField()
    publisher_date = models.DateTimeField(auto_now_add=True)
    author = models.CharField(max_length=20)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = '新闻'
        verbose_name_plural = verbose_name

class Author(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=20)
    age = models.IntegerField()
    email = models.EmailField()

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '作者'
        verbose_name_plural = verbose_name