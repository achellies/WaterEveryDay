.class Lcom/ub/main/account/AccountBindPhone$2;
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
    iput-object p1, p0, Lcom/ub/main/account/AccountBindPhone$2;->this$0:Lcom/ub/main/account/AccountBindPhone;

    .line 368
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 371
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x44d

    if-ne v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone$2;->this$0:Lcom/ub/main/account/AccountBindPhone;

    #getter for: Lcom/ub/main/account/AccountBindPhone;->rightbutton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/account/AccountBindPhone;->access$4(Lcom/ub/main/account/AccountBindPhone;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ub/main/account/AccountBindPhone$2;->this$0:Lcom/ub/main/account/AccountBindPhone;

    #getter for: Lcom/ub/main/account/AccountBindPhone;->strButtonChar:[Ljava/lang/String;
    invoke-static {v2}, Lcom/ub/main/account/AccountBindPhone;->access$1(Lcom/ub/main/account/AccountBindPhone;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ub/main/account/AccountBindPhone$2;->this$0:Lcom/ub/main/account/AccountBindPhone;

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

    .line 375
    :cond_0
    return-void
.end method
