.class Lcom/ub/main/movie/MoviePlayer$1;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/movie/MoviePlayer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/movie/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/ub/main/movie/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/movie/MoviePlayer$1;->this$0:Lcom/ub/main/movie/MoviePlayer;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ub/main/movie/MoviePlayer$1;->this$0:Lcom/ub/main/movie/MoviePlayer;

    #getter for: Lcom/ub/main/movie/MoviePlayer;->videoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/ub/main/movie/MoviePlayer;->access$0(Lcom/ub/main/movie/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 68
    iget-object v0, p0, Lcom/ub/main/movie/MoviePlayer$1;->this$0:Lcom/ub/main/movie/MoviePlayer;

    #getter for: Lcom/ub/main/movie/MoviePlayer;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/ub/main/movie/MoviePlayer;->access$1(Lcom/ub/main/movie/MoviePlayer;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 69
    return-void
.end method
