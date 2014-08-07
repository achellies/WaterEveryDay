.class Lcom/ub/main/ubsale/UbBuy$1;
.super Landroid/os/Handler;
.source "UbBuy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/ubsale/UbBuy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/ubsale/UbBuy;


# direct methods
.method constructor <init>(Lcom/ub/main/ubsale/UbBuy;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/ubsale/UbBuy$1;->this$0:Lcom/ub/main/ubsale/UbBuy;

    .line 146
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 153
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 154
    return-void

    .line 150
    :pswitch_0
    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy$1;->this$0:Lcom/ub/main/ubsale/UbBuy;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ub/main/net/ImageLoadingTaskInfo;

    invoke-virtual {v1, v0}, Lcom/ub/main/ubsale/UbBuy;->ImageLoaded(Lcom/ub/main/net/ImageLoadingTaskInfo;)V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
