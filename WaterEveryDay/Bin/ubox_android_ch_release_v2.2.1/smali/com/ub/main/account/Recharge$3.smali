.class Lcom/ub/main/account/Recharge$3;
.super Ljava/lang/Object;
.source "Recharge.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/account/Recharge;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/account/Recharge;

.field private final synthetic val$txt:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/ub/main/account/Recharge;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/account/Recharge$3;->this$0:Lcom/ub/main/account/Recharge;

    iput-object p2, p0, Lcom/ub/main/account/Recharge$3;->val$txt:Landroid/widget/EditText;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/16 v6, 0xbb8

    .line 196
    iget-object v4, p0, Lcom/ub/main/account/Recharge$3;->val$txt:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, money:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 198
    iget-object v4, p0, Lcom/ub/main/account/Recharge$3;->this$0:Lcom/ub/main/account/Recharge;

    const-string v5, "\u8bf7\u8f93\u5165\u5145\u503c\u91d1\u989d\uff01"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 219
    :goto_0
    return-void

    .line 201
    :cond_0
    const-string v3, "^\\d\\d*$"

    .line 202
    .local v3, pattern:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 203
    iget-object v4, p0, Lcom/ub/main/account/Recharge$3;->this$0:Lcom/ub/main/account/Recharge;

    const-string v5, "\u8bf7\u8f93\u5165\u6570\u5b57 \uff01"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 207
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 208
    .local v1, intMoney:I
    if-gtz v1, :cond_2

    .line 209
    iget-object v4, p0, Lcom/ub/main/account/Recharge$3;->this$0:Lcom/ub/main/account/Recharge;

    const-string v5, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u5145\u503c\u91d1\u989d"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 211
    :cond_2
    const/16 v4, 0x3e8

    if-le v1, v4, :cond_3

    .line 212
    iget-object v4, p0, Lcom/ub/main/account/Recharge$3;->this$0:Lcom/ub/main/account/Recharge;

    const-string v5, "\u4e3a\u4e86\u60a8\u7684\u8d26\u6237\u5b89\u5168\uff0c\u8bf7\u6bcf\u6b21\u5145\u503c\u91d1\u989d\u4e0d\u8981\u8d85\u8fc7\u4e00\u5343\u5143"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 216
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 217
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "money"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v4, p0, Lcom/ub/main/account/Recharge$3;->this$0:Lcom/ub/main/account/Recharge;

    const-class v5, Lcom/ub/main/account/RechargeActivity;

    invoke-static {v4, v5, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method
