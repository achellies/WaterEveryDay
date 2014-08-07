.class Lcom/ub/main/ubsale/UbHome$1;
.super Landroid/os/Handler;
.source "UbHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/ubsale/UbHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/ubsale/UbHome;


# direct methods
.method constructor <init>(Lcom/ub/main/ubsale/UbHome;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/ubsale/UbHome$1;->this$0:Lcom/ub/main/ubsale/UbHome;

    .line 237
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 239
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/ub/main/ubsale/UbHome$1;->this$0:Lcom/ub/main/ubsale/UbHome;

    #getter for: Lcom/ub/main/ubsale/UbHome;->adapter:Lcom/ub/main/ubsale/MyAdapter;
    invoke-static {v0}, Lcom/ub/main/ubsale/UbHome;->access$0(Lcom/ub/main/ubsale/UbHome;)Lcom/ub/main/ubsale/MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ub/main/ubsale/MyAdapter;->notifyDataSetChanged()V

    .line 242
    :cond_0
    return-void
.end method
