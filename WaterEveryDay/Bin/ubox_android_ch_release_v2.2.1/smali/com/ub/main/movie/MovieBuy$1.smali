.class Lcom/ub/main/movie/MovieBuy$1;
.super Landroid/os/Handler;
.source "MovieBuy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/movie/MovieBuy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/movie/MovieBuy;


# direct methods
.method constructor <init>(Lcom/ub/main/movie/MovieBuy;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/movie/MovieBuy$1;->this$0:Lcom/ub/main/movie/MovieBuy;

    .line 131
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy$1;->this$0:Lcom/ub/main/movie/MovieBuy;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ub/main/net/ImageLoadingTaskInfo;

    invoke-virtual {v1, v0}, Lcom/ub/main/movie/MovieBuy;->ImageLoaded(Lcom/ub/main/net/ImageLoadingTaskInfo;)V

    .line 170
    :cond_0
    return-void
.end method
