.class Lcom/ub/main/order/OrderDetail$1;
.super Landroid/os/Handler;
.source "OrderDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/order/OrderDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/order/OrderDetail;


# direct methods
.method constructor <init>(Lcom/ub/main/order/OrderDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/order/OrderDetail$1;->this$0:Lcom/ub/main/order/OrderDetail;

    .line 315
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 317
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 319
    iget-object v1, p0, Lcom/ub/main/order/OrderDetail$1;->this$0:Lcom/ub/main/order/OrderDetail;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ub/main/net/ImageLoadingTaskInfo;

    invoke-virtual {v1, v0}, Lcom/ub/main/order/OrderDetail;->ImageLoaded(Lcom/ub/main/net/ImageLoadingTaskInfo;)V

    .line 321
    :cond_0
    return-void
.end method
