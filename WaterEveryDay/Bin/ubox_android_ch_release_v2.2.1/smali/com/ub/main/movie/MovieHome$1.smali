.class Lcom/ub/main/movie/MovieHome$1;
.super Landroid/os/Handler;
.source "MovieHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/movie/MovieHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/movie/MovieHome;


# direct methods
.method constructor <init>(Lcom/ub/main/movie/MovieHome;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/movie/MovieHome$1;->this$0:Lcom/ub/main/movie/MovieHome;

    .line 298
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 300
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/ub/main/movie/MovieHome$1;->this$0:Lcom/ub/main/movie/MovieHome;

    #getter for: Lcom/ub/main/movie/MovieHome;->msgId:I
    invoke-static {v1}, Lcom/ub/main/movie/MovieHome;->access$0(Lcom/ub/main/movie/MovieHome;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/ub/main/movie/MovieHome$1;->this$0:Lcom/ub/main/movie/MovieHome;

    #getter for: Lcom/ub/main/movie/MovieHome;->city:Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/movie/MovieHome;->access$1(Lcom/ub/main/movie/MovieHome;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "city"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/ub/main/movie/MovieHome$1;->this$0:Lcom/ub/main/movie/MovieHome;

    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_CITY_FILM:Lcom/ub/main/util/NetConfig$HttpRequestId;

    iget-object v2, p0, Lcom/ub/main/movie/MovieHome$1;->this$0:Lcom/ub/main/movie/MovieHome;

    #getter for: Lcom/ub/main/movie/MovieHome;->city:Landroid/widget/Button;
    invoke-static {v2}, Lcom/ub/main/movie/MovieHome;->access$1(Lcom/ub/main/movie/MovieHome;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ub/main/util/NetConfig;->createMovieCityFilmPostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/ub/main/movie/MovieHome;->request(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/ub/main/movie/MovieHome;->access$2(Lcom/ub/main/movie/MovieHome;Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;)V

    .line 305
    :cond_0
    return-void
.end method
