from rest_framework import serializers
from .models import Article, Comment


class CommentSerializer(serializers.ModelSerializer):

    class Meta:
        model = Comment
        fields = '__all__'
        read_only_fields = ('article', )


class ArticleSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = Article
        fields = '__all__'


class ArticleListSerializer(serializers.ModelSerializer):
    comment_set = CommentSerializer(many=True, read_only=True)
    comment_cnt = serializers.IntegerField(source='comment_set.count', read_only=True) # 반드시 string
    class Meta:
        model = Article
        fields = ('id', 'title', 'comment_set', 'commnet_cnt')

        # fields = ('id', 'title', 'comment_set') # 또잉교수님이 그냥 해주시는거
        # comment_set 역참조를 등록하면 볼 수 있음