.class Lcom/ub/main/login/ForgetPswVerifycode$3;
.super Ljava/lang/Object;
.source "ForgetPswVerifycode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/login/ForgetPswVerifycode;->initControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/login/ForgetPswVerifycode;


# direct methods
.method constructor <init>(Lcom/ub/main/login/ForgetPswVerifycode;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/login/ForgetPswVerifycode$3;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode$3;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    iget-object v1, p0, Lcom/ub/main/login/ForgetPswVerifycode$3;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    #getter for: Lcom/ub/main/login/ForgetPswVerifycode;->new_pwd_et:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/ub/main/login/ForgetPswVerifycode;->access$5(Lcom/ub/main/login/ForgetPswVerifycode;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/ub/main/login/ForgetPswVerifycode;->new_password:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/ub/main/login/ForgetPswVerifycode;->access$6(Lcom/ub/main/login/ForgetPswVerifycode;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode$3;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    #getter for: Lcom/ub/main/login/ForgetPswVerifycode;->new_pwd_et:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/ub/main/login/ForgetPswVerifycode;->access$5(Lcom/ub/main/login/ForgetPswVerifycode;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode$3;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u5bc6\u7801\u8f93\u5165\u9519\u8bef\uff01"

    new-instance v3, Lcom/ub/main/login/ForgetPswVerifycode$3$1;

    invoke-direct {v3, p0}, Lcom/ub/main/login/ForgetPswVerifycode$3$1;-><init>(Lcom/ub/main/login/ForgetPswVerifycode$3;)V

    invoke-static {v0, v1, v2, v3}, Lcom/ub/main/util/Tool;->showPositiveButtonDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 217
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode$3;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    #getter for: Lcom/ub/main/login/ForgetPswVerifycode;->new_password:Ljava/lang/String;
    invoke-static {v0}, Lcom/ub/main/login/ForgetPswVerifycode;->access$7(Lcom/ub/main/login/ForgetPswVerifycode;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 181
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ub/main/login/ForgetPswVerifycode$3;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 183
    const-string v1, "\u65b0\u5bc6\u7801\u957f\u5ea6\u81f3\u5c11\u4e3a6\u4f4d\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 184
    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 186
    :cond_1
    const-string v0, "^[0-9a-zA-Z]{6,20}$"

    iget-object v1, p0, Lcom/ub/main/login/ForgetPswVerifycode$3;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    #getter for: Lcom/ub/main/login/ForgetPswVerifycode;->new_password:Ljava/lang/String;
    invoke-static {v1}, Lcom/ub/main/login/ForgetPswVerifycode;->access$7(Lcom/ub/main/login/ForgetPswVerifycode;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ub/main/util/Tool;->matchingText(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ub/main/login/ForgetPswVerifycode$3;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 188
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 189
    const-string v1, "\u5bc6\u7801\u53ea\u80fd\u8f93\u51656~20\u4f4d\u7684\u5b57\u7b26\uff0c\u53ef\u5305\u542b\u6570\u5b57\u3001\u5927\u5c0f\u5199\u5b57\u6bcd\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 190
    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode$3;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    #getter for: Lcom/ub/main/login/ForgetPswVerifycode;->code_et:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/ub/main/login/ForgetPswVerifycode;->access$8(Lcom/ub/main/login/ForgetPswVerifycode;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode$3;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u9a8c\u8bc1\u7801\u8f93\u5165\u9519\u8bef\uff01"

    new-instance v3, Lcom/ub/main/login/ForgetPswVerifycode$3$2;

    invoke-direct {v3, p0}, Lcom/ub/main/login/ForgetPswVerifycode$3$2;-><init>(Lcom/ub/main/login/ForgetPswVerifycode$3;)V

    invoke-static {v0, v1, v2, v3}, Lcom/ub/main/util/Tool;->showPositiveButtonDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode$3;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    #getter for: Lcom/ub/main/login/ForgetPswVerifycode;->code_et:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/ub/main/login/ForgetPswVerifycode;->access$8(Lcom/ub/main/login/ForgetPswVerifycode;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 201
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode$3;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    new-instance v3, Lcom/ub/main/login/ForgetPswVerifycode$3$3;

    invoke-direct {v3, p0}, Lcom/ub/main/login/ForgetPswVerifycode$3$3;-><init>(Lcom/ub/main/login/ForgetPswVerifycode$3;)V

    invoke-static {v0, v1, v2, v3}, Lcom/ub/main/util/Tool;->showPositiveButtonDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 207
    :cond_4
    const-string v0, "^[0-9]*[1-9][0-9]*$"

    iget-object v1, p0, Lcom/ub/main/login/ForgetPswVerifycode$3;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    #getter for: Lcom/ub/main/login/ForgetPswVerifycode;->code_et:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/ub/main/login/ForgetPswVerifycode;->access$8(Lcom/ub/main/login/ForgetPswVerifycode;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ub/main/util/Tool;->matchingText(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 208
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode$3;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u9519\u8bef\u7684\u9a8c\u8bc1\u7801!"

    new-instance v3, Lcom/ub/main/login/ForgetPswVerifycode$3$4;

    invoke-direct {v3, p0}, Lcom/ub/main/login/ForgetPswVerifycode$3$4;-><init>(Lcom/ub/main/login/ForgetPswVerifycode$3;)V

    invoke-static {v0, v1, v2, v3}, Lcom/ub/main/util/Tool;->showPositiveButtonDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 215
    :cond_5
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode$3;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    #calls: Lcom/ub/main/login/ForgetPswVerifycode;->sendCode()V
    invoke-static {v0}, Lcom/ub/main/login/ForgetPswVerifycode;->access$9(Lcom/ub/main/login/ForgetPswVerifycode;)V

    goto/16 :goto_0
.end method
