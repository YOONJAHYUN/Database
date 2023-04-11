from django.db import models

# Create your models here.
# 게시글 테이블을 만들기 위한 schema 정의
# 파이썬에서 클래스 이름은 파스칼 케이스를 사용한다. 라는 암묵적 약속
# WordAndWord 단어의 첫 글자를 대문자로 작성하는 것.
class Article(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()

class Comment(models.Model):
    # article 속성에 들어가야하는 값은 내가 참조하고 있는 대상의 pk
    '''
    Comment Table Colum
    PK | content | article_id
    1  | 댓글내용  | 1
    '''

    # class의 속성은 참조 대상 객체의 단수형으로만 작성
    # table 생성 시 column명은 알아서 _id가 붙여서 만들어진다.
    # 주석은 교수님꺼 풀받자....;;;;


    article = models.ForeignKey(Article, on_delete=models.CASCADE)
    content = models.CharField(max_length=150)

