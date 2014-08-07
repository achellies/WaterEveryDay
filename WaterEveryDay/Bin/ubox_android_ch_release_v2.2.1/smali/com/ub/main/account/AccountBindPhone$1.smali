.class Lcom/ub/main/account/AccountBindPhone$1;
.super Landroid/os/Handler;
.source "AccountBindPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/account/AccountBindPhone;
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
    iput-object p1, p0, Lcom/ub/main/account/AccountBindPhone$1;->this$0:Lcom/ub/main/account/AccountBindPhone;

    .line 344
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v2, 0xbb8

    const/4 v3, 0x3

    .line 347
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x44d

    if-ne v0, v1, :cond_1

    .line 349
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone$1;->this$0:Lcom/ub/main/account/AccountBindPhone;

    #getter for: Lcom/ub/main/account/AccountBindPhone;->sendButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/account/AccountBindPhone;->access$0(Lcom/ub/main/account/AccountBindPhone;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ub/main/account/AccountBindPhone$1;->this$0:Lcom/ub/main/account/AccountBindPhone;

    #getter for: Lcom/ub/main/account/AccountBindPhone;->strButtonChar:[Ljava/lang/String;
    invoke-static {v2}, Lcom/ub/main/account/AccountBindPhone;->access$1(Lcom/ub/main/account/AccountBindPhone;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ub/main/account/AccountBindPhone$1;->this$0:Lcom/ub/main/account/AccountBindPhone;

    #getter for: Lcom/ub/main/account/AccountBindPhone;->iTimer:I
    invoke-static {v2}, Lcom/ub/main/account/AccountBindPhone;->access$2(Lcom/ub/main/account/AccountBindPhone;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x44e

    if-ne v0, v1, :cond_2

    .line 351
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone$1;->this$0:Lcom/ub/main/account/AccountBindPhone;

    #getter for: Lcom/ub/main/account/AccountBindPhone;->sendButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/account/AccountBindPhone;->access$0(Lcom/ub/main/account/AccountBindPhone;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/ub/main/account/AccountBindPhone$1;->this$0:Lcom/ub/main/account/AccountBindPhone;

    #getter for: Lcom/ub/main/account/AccountBindPhone;->strButtonChar:[Ljava/lang/String;
    invoke-static {v1}, Lcom/ub/main/account/AccountBindPhone;->access$1(Lcom/ub/main/account/AccountBindPhone;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone$1;->this$0:Lcom/ub/main/account/AccountBindPhone;

    #getter for: Lcom/ub/main/account/AccountBindPhone;->sendButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/account/AccountBindPhone;->access$0(Lcom/ub/main/account/AccountBindPhone;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 353
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_3

    .line 354
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone$1;->this$0:Lcom/ub/main/account/AccountBindPhone;

    const-string v1, "\u624b\u673a\u53f7\u7801\u7ed1\u5b9a\u5931\u8d25\uff01"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 357
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone$1;->this$0:Lcom/ub/main/account/AccountBindPhone;

    const-string v1, "\u624b\u673a\u53f7\u7801\u7ed1\u5b9a\u6210\u529f\uff01"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 361
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone$1;->this$0:Lcom/ub/main/account/AccountBindPhone;

    #getter for: Lcom/ub/main/account/AccountBindPhone;->phone:Ljava/lang/String;
    invoke-static {v0}, Lcom/ub/main/account/AccountBindPhone;->access$3(Lcom/ub/main/account/AccountBindPhone;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ub/main/data/UserInfoBean;->USER_ACOUNT:Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone$1;->this$0:Lcom/ub/main/account/AccountBindPhone;

    invoke-virtual {v0}, Lcom/ub/main/account/AccountBindPhone;->finish()V

    goto :goto_0
.end method
