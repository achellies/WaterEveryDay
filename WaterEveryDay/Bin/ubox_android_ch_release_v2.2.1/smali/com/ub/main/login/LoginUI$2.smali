.class Lcom/ub/main/login/LoginUI$2;
.super Ljava/lang/Object;
.source "LoginUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/login/LoginUI;->setClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/login/LoginUI;


# direct methods
.method constructor <init>(Lcom/ub/main/login/LoginUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/login/LoginUI$2;->this$0:Lcom/ub/main/login/LoginUI;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 155
    iget-object v1, p0, Lcom/ub/main/login/LoginUI$2;->this$0:Lcom/ub/main/login/LoginUI;

    iget-object v2, p0, Lcom/ub/main/login/LoginUI$2;->this$0:Lcom/ub/main/login/LoginUI;

    #getter for: Lcom/ub/main/login/LoginUI;->accountET:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/ub/main/login/LoginUI;->access$0(Lcom/ub/main/login/LoginUI;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/ub/main/login/LoginUI;->username:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/ub/main/login/LoginUI;->access$1(Lcom/ub/main/login/LoginUI;Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/ub/main/login/LoginUI$2;->this$0:Lcom/ub/main/login/LoginUI;

    iget-object v2, p0, Lcom/ub/main/login/LoginUI$2;->this$0:Lcom/ub/main/login/LoginUI;

    #getter for: Lcom/ub/main/login/LoginUI;->pwdET:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/ub/main/login/LoginUI;->access$2(Lcom/ub/main/login/LoginUI;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/ub/main/login/LoginUI;->userpwd:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/ub/main/login/LoginUI;->access$3(Lcom/ub/main/login/LoginUI;Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/ub/main/login/LoginUI$2;->this$0:Lcom/ub/main/login/LoginUI;

    #getter for: Lcom/ub/main/login/LoginUI;->username:Ljava/lang/String;
    invoke-static {v1}, Lcom/ub/main/login/LoginUI;->access$4(Lcom/ub/main/login/LoginUI;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ub/main/login/LoginUI$2;->this$0:Lcom/ub/main/login/LoginUI;

    #getter for: Lcom/ub/main/login/LoginUI;->username:Ljava/lang/String;
    invoke-static {v1}, Lcom/ub/main/login/LoginUI;->access$4(Lcom/ub/main/login/LoginUI;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ub/main/login/LoginUI$2;->this$0:Lcom/ub/main/login/LoginUI;

    #getter for: Lcom/ub/main/login/LoginUI;->username:Ljava/lang/String;
    invoke-static {v1}, Lcom/ub/main/login/LoginUI;->access$4(Lcom/ub/main/login/LoginUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/ub/main/login/LoginUI$2;->this$0:Lcom/ub/main/login/LoginUI;

    #getter for: Lcom/ub/main/login/LoginUI;->userpwd:Ljava/lang/String;
    invoke-static {v1}, Lcom/ub/main/login/LoginUI;->access$5(Lcom/ub/main/login/LoginUI;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ub/main/login/LoginUI$2;->this$0:Lcom/ub/main/login/LoginUI;

    #getter for: Lcom/ub/main/login/LoginUI;->userpwd:Ljava/lang/String;
    invoke-static {v1}, Lcom/ub/main/login/LoginUI;->access$5(Lcom/ub/main/login/LoginUI;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ub/main/login/LoginUI$2;->this$0:Lcom/ub/main/login/LoginUI;

    #getter for: Lcom/ub/main/login/LoginUI;->userpwd:Ljava/lang/String;
    invoke-static {v1}, Lcom/ub/main/login/LoginUI;->access$5(Lcom/ub/main/login/LoginUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/ub/main/login/LoginUI$2;->this$0:Lcom/ub/main/login/LoginUI;

    const-string v2, "\u8d26\u53f7\u548c\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {v1, v2}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 164
    :cond_2
    const v0, 0x7fffffff

    .line 165
    .local v0, entrance:I
    iget-object v1, p0, Lcom/ub/main/login/LoginUI$2;->this$0:Lcom/ub/main/login/LoginUI;

    #getter for: Lcom/ub/main/login/LoginUI;->accountET:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/ub/main/login/LoginUI;->access$0(Lcom/ub/main/login/LoginUI;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ub/main/util/Tool;->isMobile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 166
    const/4 v0, 0x1

    .line 174
    :cond_3
    :goto_1
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_5

    .line 175
    iget-object v1, p0, Lcom/ub/main/login/LoginUI$2;->this$0:Lcom/ub/main/login/LoginUI;

    const-string v2, "\u624b\u673a\u53f7\u6216\u90ae\u7bb1\u683c\u5f0f\u6709\u9519\u8bef\uff01"

    invoke-static {v1, v2}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_4
    iget-object v1, p0, Lcom/ub/main/login/LoginUI$2;->this$0:Lcom/ub/main/login/LoginUI;

    #getter for: Lcom/ub/main/login/LoginUI;->accountET:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/ub/main/login/LoginUI;->access$0(Lcom/ub/main/login/LoginUI;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ub/main/util/Tool;->isEmail(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    const/4 v0, 0x0

    goto :goto_1

    .line 179
    :cond_5
    iget-object v1, p0, Lcom/ub/main/login/LoginUI$2;->this$0:Lcom/ub/main/login/LoginUI;

    iget-object v2, p0, Lcom/ub/main/login/LoginUI$2;->this$0:Lcom/ub/main/login/LoginUI;

    #getter for: Lcom/ub/main/login/LoginUI;->username:Ljava/lang/String;
    invoke-static {v2}, Lcom/ub/main/login/LoginUI;->access$4(Lcom/ub/main/login/LoginUI;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ub/main/login/LoginUI$2;->this$0:Lcom/ub/main/login/LoginUI;

    #getter for: Lcom/ub/main/login/LoginUI;->userpwd:Ljava/lang/String;
    invoke-static {v3}, Lcom/ub/main/login/LoginUI;->access$5(Lcom/ub/main/login/LoginUI;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/ub/main/login/LoginUI;->login(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v1, v2, v3, v0}, Lcom/ub/main/login/LoginUI;->access$6(Lcom/ub/main/login/LoginUI;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
