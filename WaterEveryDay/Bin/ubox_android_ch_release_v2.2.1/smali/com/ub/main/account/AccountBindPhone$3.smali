.class Lcom/ub/main/account/AccountBindPhone$3;
.super Ljava/lang/Thread;
.source "AccountBindPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/account/AccountBindPhone;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/account/AccountBindPhone;


# direct methods
.method constructor <init>(Lcom/ub/main/account/AccountBindPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/account/AccountBindPhone$3;->this$0:Lcom/ub/main/account/AccountBindPhone;

    .line 176
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 179
    :goto_0
    iget-object v2, p0, Lcom/ub/main/account/AccountBindPhone$3;->this$0:Lcom/ub/main/account/AccountBindPhone;

    #getter for: Lcom/ub/main/account/AccountBindPhone;->isRun:Z
    invoke-static {v2}, Lcom/ub/main/account/AccountBindPhone;->access$5(Lcom/ub/main/account/AccountBindPhone;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    return-void

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/ub/main/account/AccountBindPhone$3;->this$0:Lcom/ub/main/account/AccountBindPhone;

    #getter for: Lcom/ub/main/account/AccountBindPhone;->iTimer:I
    invoke-static {v2}, Lcom/ub/main/account/AccountBindPhone;->access$2(Lcom/ub/main/account/AccountBindPhone;)I

    move-result v2

    if-lez v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/ub/main/account/AccountBindPhone$3;->this$0:Lcom/ub/main/account/AccountBindPhone;

    #getter for: Lcom/ub/main/account/AccountBindPhone;->iTimer:I
    invoke-static {v2}, Lcom/ub/main/account/AccountBindPhone;->access$2(Lcom/ub/main/account/AccountBindPhone;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    #setter for: Lcom/ub/main/account/AccountBindPhone;->iTimer:I
    invoke-static {v2, v3}, Lcom/ub/main/account/AccountBindPhone;->access$6(Lcom/ub/main/account/AccountBindPhone;I)V

    .line 184
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 185
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x44d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 186
    iget-object v2, p0, Lcom/ub/main/account/AccountBindPhone$3;->this$0:Lcom/ub/main/account/AccountBindPhone;

    iget-object v2, v2, Lcom/ub/main/account/AccountBindPhone;->handler_sms:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 193
    .end local v1           #msg:Landroid/os/Message;
    :goto_1
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 190
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v2, p0, Lcom/ub/main/account/AccountBindPhone$3;->this$0:Lcom/ub/main/account/AccountBindPhone;

    const/4 v3, 0x0

    #setter for: Lcom/ub/main/account/AccountBindPhone;->isRun:Z
    invoke-static {v2, v3}, Lcom/ub/main/account/AccountBindPhone;->access$7(Lcom/ub/main/account/AccountBindPhone;Z)V

    goto :goto_1
.end method
