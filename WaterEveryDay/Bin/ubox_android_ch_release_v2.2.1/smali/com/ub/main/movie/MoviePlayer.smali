.class public Lcom/ub/main/movie/MoviePlayer;
.super Lcom/ub/main/BaseActivity;
.source "MoviePlayer.java"


# static fields
.field private static m_url:Ljava/lang/String;


# instance fields
.field private back:Landroid/widget/Button;

.field private progressBar:Landroid/widget/ProgressBar;

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "http://f3.3g.56.com/11/11/BkFigdEqZRYCCWksPboGJnlLJlMApYRO_q.mp4"

    sput-object v0, Lcom/ub/main/movie/MoviePlayer;->m_url:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/movie/MoviePlayer;)Landroid/widget/VideoView;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ub/main/movie/MoviePlayer;->videoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ub/main/movie/MoviePlayer;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ub/main/movie/MoviePlayer;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public Create(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 104
    sput-object p1, Lcom/ub/main/movie/MoviePlayer;->m_url:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 119
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v2, 0x7f03003a

    invoke-virtual {p0, v2}, Lcom/ub/main/movie/MoviePlayer;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/ub/main/movie/MoviePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 42
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, tempUrl:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 44
    sput-object v1, Lcom/ub/main/movie/MoviePlayer;->m_url:Ljava/lang/String;

    .line 45
    :cond_0
    const/4 v1, 0x0

    .line 46
    const v2, 0x7f080129

    invoke-virtual {p0, v2}, Lcom/ub/main/movie/MoviePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/VideoView;

    iput-object v2, p0, Lcom/ub/main/movie/MoviePlayer;->videoView:Landroid/widget/VideoView;

    .line 47
    const v2, 0x7f08012a

    invoke-virtual {p0, v2}, Lcom/ub/main/movie/MoviePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/ub/main/movie/MoviePlayer;->progressBar:Landroid/widget/ProgressBar;

    .line 48
    iget-object v2, p0, Lcom/ub/main/movie/MoviePlayer;->progressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 50
    iget-object v2, p0, Lcom/ub/main/movie/MoviePlayer;->videoView:Landroid/widget/VideoView;

    if-nez v2, :cond_1

    .line 97
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v2, p0, Lcom/ub/main/movie/MoviePlayer;->videoView:Landroid/widget/VideoView;

    new-instance v3, Landroid/widget/MediaController;

    invoke-direct {v3, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 64
    iget-object v2, p0, Lcom/ub/main/movie/MoviePlayer;->videoView:Landroid/widget/VideoView;

    sget-object v3, Lcom/ub/main/movie/MoviePlayer;->m_url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 65
    iget-object v2, p0, Lcom/ub/main/movie/MoviePlayer;->videoView:Landroid/widget/VideoView;

    new-instance v3, Lcom/ub/main/movie/MoviePlayer$1;

    invoke-direct {v3, p0}, Lcom/ub/main/movie/MoviePlayer$1;-><init>(Lcom/ub/main/movie/MoviePlayer;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 71
    iget-object v2, p0, Lcom/ub/main/movie/MoviePlayer;->videoView:Landroid/widget/VideoView;

    new-instance v3, Lcom/ub/main/movie/MoviePlayer$2;

    invoke-direct {v3, p0}, Lcom/ub/main/movie/MoviePlayer$2;-><init>(Lcom/ub/main/movie/MoviePlayer;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 76
    iget-object v2, p0, Lcom/ub/main/movie/MoviePlayer;->videoView:Landroid/widget/VideoView;

    new-instance v3, Lcom/ub/main/movie/MoviePlayer$3;

    invoke-direct {v3, p0}, Lcom/ub/main/movie/MoviePlayer$3;-><init>(Lcom/ub/main/movie/MoviePlayer;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 90
    iget-object v2, p0, Lcom/ub/main/movie/MoviePlayer;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->requestFocus()Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 111
    iget-object v0, p0, Lcom/ub/main/movie/MoviePlayer;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 112
    return-void
.end method
