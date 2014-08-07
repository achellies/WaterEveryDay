.class Lcom/ub/main/account/RechargeActivity$5;
.super Ljava/lang/Object;
.source "RechargeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/account/RechargeActivity;->XYKClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/account/RechargeActivity;


# direct methods
.method constructor <init>(Lcom/ub/main/account/RechargeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/account/RechargeActivity$5;->this$0:Lcom/ub/main/account/RechargeActivity;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/ub/main/account/RechargeActivity$5;->this$0:Lcom/ub/main/account/RechargeActivity;

    #getter for: Lcom/ub/main/account/RechargeActivity;->account:Lcom/ub/main/data/CreditCardAccountInfo;
    invoke-static {v0}, Lcom/ub/main/account/RechargeActivity;->access$2(Lcom/ub/main/account/RechargeActivity;)Lcom/ub/main/data/CreditCardAccountInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ub/main/account/RechargeActivity$5;->this$0:Lcom/ub/main/account/RechargeActivity;

    #getter for: Lcom/ub/main/account/RechargeActivity;->account:Lcom/ub/main/data/CreditCardAccountInfo;
    invoke-static {v0}, Lcom/ub/main/account/RechargeActivity;->access$2(Lcom/ub/main/account/RechargeActivity;)Lcom/ub/main/data/CreditCardAccountInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ub/main/data/CreditCardAccountInfo;->getCardNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/ub/main/account/RechargeActivity$5;->this$0:Lcom/ub/main/account/RechargeActivity;

    #getter for: Lcom/ub/main/account/RechargeActivity;->account:Lcom/ub/main/data/CreditCardAccountInfo;
    invoke-static {v0}, Lcom/ub/main/account/RechargeActivity;->access$2(Lcom/ub/main/account/RechargeActivity;)Lcom/ub/main/data/CreditCardAccountInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ub/main/data/CreditCardAccountInfo;->getCardNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ub/main/account/RechargeActivity$5;->this$0:Lcom/ub/main/account/RechargeActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 180
    const-string v1, "\u60a8\u672a\u7ed1\u5b9a\u4fe1\u7528\u5361,\u8bf7\u53bb\u8d26\u6237\u7ba1\u7406\u9875\u7ed1\u5b9a\u4fe1\u7528\u5361!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 181
    const-string v1, "\u786e\u5b9a"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/ub/main/account/RechargeActivity$5;->this$0:Lcom/ub/main/account/RechargeActivity;

    const-string v1, "3"

    #calls: Lcom/ub/main/account/RechargeActivity;->doOrder(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ub/main/account/RechargeActivity;->access$0(Lcom/ub/main/account/RechargeActivity;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/ub/main/account/RechargeActivity$5;->this$0:Lcom/ub/main/account/RechargeActivity;

    const/4 v1, 0x2

    #setter for: Lcom/ub/main/account/RechargeActivity;->pay_type:I
    invoke-static {v0, v1}, Lcom/ub/main/account/RechargeActivity;->access$1(Lcom/ub/main/account/RechargeActivity;I)V

    goto :goto_0
.end method
