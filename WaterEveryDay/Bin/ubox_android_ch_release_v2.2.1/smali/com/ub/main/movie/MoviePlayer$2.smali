.class Lcom/ub/main/movie/MoviePlayer$2;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lcom/ub/main/movie/MoviePlayer$2;->this$0:Lcom/ub/main/movie/MoviePlayer;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ub/main/movie/MoviePlayer$2;->this$0:Lcom/ub/main/movie/MoviePlayer;

    invoke-virtual {v0}, Lcom/ub/main/movie/MoviePlayer;->finish()V

    .line 74
    return-void
.end method
