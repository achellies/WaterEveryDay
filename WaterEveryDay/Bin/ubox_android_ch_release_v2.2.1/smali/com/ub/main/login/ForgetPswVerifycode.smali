.class public Lcom/ub/main/login/ForgetPswVerifycode;
.super Lcom/ub/main/BaseActivity;
.source "ForgetPswVerifycode.java"


# instance fields
.field private account:Ljava/lang/String;

.field private back_bt:Landroid/widget/Button;

.field private code:Ljava/lang/String;

.field private code_bt:Landroid/widget/Button;

.field private code_et:Landroid/widget/EditText;

.field private color_code_bt:I

.field private entrance:I

.field private finish_bt:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;

.field private info:Landroid/widget/TextView;

.field private isRestStart:Z

.field private new_password:Ljava/lang/String;

.field private new_pwd_et:Landroid/widget/EditText;

.field private remain:I

.field private text_code_bt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->finish_bt:Landroid/widget/Button;

    .line 41
    iput-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->code_bt:Landroid/widget/Button;

    .line 50
    iput-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->text_code_bt:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->code_et:Landroid/widget/EditText;

    .line 59
    iput-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->code:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->new_pwd_et:Landroid/widget/EditText;

    .line 67
    iput-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->new_password:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->back_bt:Landroid/widget/Button;

    .line 76
    iput-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->account:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->info:Landroid/widget/TextView;

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->entrance:I

    .line 81
    const/16 v0, 0x3c

    iput v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->remain:I

    .line 84
    new-instance v0, Lcom/ub/main/login/ForgetPswVerifycode$1;

    invoke-direct {v0, p0}, Lcom/ub/main/login/ForgetPswVerifycode$1;-><init>(Lcom/ub/main/login/ForgetPswVerifycode;)V

    iput-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->handler:Landroid/os/Handler;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/login/ForgetPswVerifycode;)I
    .locals 1
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->remain:I

    return v0
.end method

.method static synthetic access$1(Lcom/ub/main/login/ForgetPswVerifycode;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput p1, p0, Lcom/ub/main/login/ForgetPswVerifycode;->remain:I

    return-void
.end method

.method static synthetic access$10(Lcom/ub/main/login/ForgetPswVerifycode;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/ub/main/login/ForgetPswVerifycode;->isRestStart:Z

    return-void
.end method

.method static synthetic access$2(Lcom/ub/main/login/ForgetPswVerifycode;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->code_bt:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ub/main/login/ForgetPswVerifycode;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->text_code_bt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ub/main/login/ForgetPswVerifycode;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/ub/main/login/ForgetPswVerifycode;->resendCode()V

    return-void
.end method

.method static synthetic access$5(Lcom/ub/main/login/ForgetPswVerifycode;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->new_pwd_et:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ub/main/login/ForgetPswVerifycode;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/ub/main/login/ForgetPswVerifycode;->new_password:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/ub/main/login/ForgetPswVerifycode;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->new_password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/ub/main/login/ForgetPswVerifycode;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->code_et:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$9(Lcom/ub/main/login/ForgetPswVerifycode;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/ub/main/login/ForgetPswVerifycode;->sendCode()V

    return-void
.end method

.method private initControl()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->code_bt:Landroid/widget/Button;

    new-instance v1, Lcom/ub/main/login/ForgetPswVerifycode$2;

    invoke-direct {v1, p0}, Lcom/ub/main/login/ForgetPswVerifycode$2;-><init>(Lcom/ub/main/login/ForgetPswVerifycode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->finish_bt:Landroid/widget/Button;

    new-instance v1, Lcom/ub/main/login/ForgetPswVerifycode$3;

    invoke-direct {v1, p0}, Lcom/ub/main/login/ForgetPswVerifycode$3;-><init>(Lcom/ub/main/login/ForgetPswVerifycode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->back_bt:Landroid/widget/Button;

    new-instance v1, Lcom/ub/main/login/ForgetPswVerifycode$4;

    invoke-direct {v1, p0}, Lcom/ub/main/login/ForgetPswVerifycode$4;-><init>(Lcom/ub/main/login/ForgetPswVerifycode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->new_pwd_et:Landroid/widget/EditText;

    new-instance v1, Lcom/ub/main/login/ForgetPswVerifycode$5;

    invoke-direct {v1, p0}, Lcom/ub/main/login/ForgetPswVerifycode$5;-><init>(Lcom/ub/main/login/ForgetPswVerifycode;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 235
    return-void
.end method

.method private initLogic()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->code_bt:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->color_code_bt:I

    .line 239
    invoke-direct {p0}, Lcom/ub/main/login/ForgetPswVerifycode;->showInfo()V

    .line 240
    invoke-direct {p0}, Lcom/ub/main/login/ForgetPswVerifycode;->resetRemain()V

    .line 241
    return-void
.end method

.method private initModel()V
    .locals 4

    .prologue
    .line 125
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ub/main/login/ForgetPswVerifycode;->isRestStart:Z

    .line 126
    invoke-virtual {p0}, Lcom/ub/main/login/ForgetPswVerifycode;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "phone_number"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/login/ForgetPswVerifycode;->account:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/ub/main/login/ForgetPswVerifycode;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "5006"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, haveCode:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 129
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u786e\u5b9a"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 130
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 134
    const/high16 v2, 0x7f08

    invoke-virtual {p0, v2}, Lcom/ub/main/login/ForgetPswVerifycode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 135
    .local v0, head:Landroid/view/ViewGroup;
    const v2, 0x7f0800e7

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 136
    .local v1, title:Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    const-string v2, "\u5fd8\u8bb0\u5bc6\u7801"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const v2, 0x7f0800ed

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ub/main/login/ForgetPswVerifycode;->back_bt:Landroid/widget/Button;

    .line 139
    iget-object v2, p0, Lcom/ub/main/login/ForgetPswVerifycode;->back_bt:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    const v2, 0x7f08008c

    invoke-virtual {p0, v2}, Lcom/ub/main/login/ForgetPswVerifycode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ub/main/login/ForgetPswVerifycode;->info:Landroid/widget/TextView;

    .line 143
    const v2, 0x7f0800fa

    invoke-virtual {p0, v2}, Lcom/ub/main/login/ForgetPswVerifycode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/ub/main/login/ForgetPswVerifycode;->new_pwd_et:Landroid/widget/EditText;

    .line 144
    iget-object v2, p0, Lcom/ub/main/login/ForgetPswVerifycode;->new_pwd_et:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 146
    const v2, 0x7f0800fb

    invoke-virtual {p0, v2}, Lcom/ub/main/login/ForgetPswVerifycode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ub/main/login/ForgetPswVerifycode;->finish_bt:Landroid/widget/Button;

    .line 147
    iget-object v2, p0, Lcom/ub/main/login/ForgetPswVerifycode;->finish_bt:Landroid/widget/Button;

    const-string v3, "\u5b8c\u6210"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 149
    const v2, 0x7f0800fc

    invoke-virtual {p0, v2}, Lcom/ub/main/login/ForgetPswVerifycode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ub/main/login/ForgetPswVerifycode;->code_bt:Landroid/widget/Button;

    .line 150
    iget-object v2, p0, Lcom/ub/main/login/ForgetPswVerifycode;->code_bt:Landroid/widget/Button;

    const-string v3, "\u91cd\u65b0\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v2, p0, Lcom/ub/main/login/ForgetPswVerifycode;->code_bt:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/login/ForgetPswVerifycode;->text_code_bt:Ljava/lang/String;

    .line 153
    const v2, 0x7f0800f9

    invoke-virtual {p0, v2}, Lcom/ub/main/login/ForgetPswVerifycode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/ub/main/login/ForgetPswVerifycode;->code_et:Landroid/widget/EditText;

    .line 155
    return-void
.end method

.method private resendCode()V
    .locals 6

    .prologue
    .line 267
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_SMS_VALIDATECODE:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 268
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->account:Ljava/lang/String;

    iget v2, p0, Lcom/ub/main/login/ForgetPswVerifycode;->entrance:I

    invoke-static {v0, v2}, Lcom/ub/main/util/NetConfig;->createGetVertifyPhoneString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 269
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u6570\u636e..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 267
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/login/ForgetPswVerifycode;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method private resetRemain()V
    .locals 4

    .prologue
    .line 252
    const/16 v0, 0x3c

    iput v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->remain:I

    .line 253
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->code_bt:Landroid/widget/Button;

    iget v1, p0, Lcom/ub/main/login/ForgetPswVerifycode;->color_code_bt:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 254
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->code_bt:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 255
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 256
    return-void
.end method

.method private sendCode()V
    .locals 6

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->isRestStart:Z

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->code_et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->code:Ljava/lang/String;

    .line 277
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->RESET_PASSWD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 278
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->account:Ljava/lang/String;

    iget-object v2, p0, Lcom/ub/main/login/ForgetPswVerifycode;->code:Ljava/lang/String;

    iget-object v3, p0, Lcom/ub/main/login/ForgetPswVerifycode;->new_password:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/ub/main/util/NetConfig;->createResetPasswordString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 279
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u6570\u636e..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 277
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/login/ForgetPswVerifycode;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->isRestStart:Z

    .line 282
    :cond_0
    return-void
.end method

.method private showInfo()V
    .locals 3

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 245
    .local v0, sb:Ljava/lang/StringBuffer;
    iget v1, p0, Lcom/ub/main/login/ForgetPswVerifycode;->entrance:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 246
    const-string v1, "\u6211\u4eec\u5df2\u7ecf\u5411\u624b\u673a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/ub/main/login/ForgetPswVerifycode;->account:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\u53d1\u9001\u4e86\u4e00\u6761\u9a8c\u8bc1\u7801\uff0c\u8bf7\u7b49\u5f85\u5e76\u8f93\u5165\u60a8\u6536\u5230\u7684\u77ed\u4fe1\u9a8c\u8bc1\u7801\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/ub/main/login/ForgetPswVerifycode;->info:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    return-void
.end method


# virtual methods
.method public BackTolastActivity(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/ub/main/login/ForgetPswVerifycode;->finish()V

    .line 260
    return-void
.end method

.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v1, p0, Lcom/ub/main/login/ForgetPswVerifycode;->handler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 288
    const-string v1, "200"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_SMS_VALIDATECODE:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/ub/main/login/ForgetPswVerifycode;->TAG:Ljava/lang/String;

    const-string v2, "+++++\u91cd\u65b0\u53d1\u9001\u6210\u529f+++++"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0}, Lcom/ub/main/login/ForgetPswVerifycode;->resetRemain()V

    .line 292
    iget-object v1, p0, Lcom/ub/main/login/ForgetPswVerifycode;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->RESET_PASSWD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    new-instance v0, Lcom/ub/main/data/UserDataManage;

    invoke-direct {v0, p0}, Lcom/ub/main/data/UserDataManage;-><init>(Landroid/content/Context;)V

    .line 297
    .local v0, userDataManage:Lcom/ub/main/data/UserDataManage;
    iget-object v1, p0, Lcom/ub/main/login/ForgetPswVerifycode;->account:Ljava/lang/String;

    iget-object v2, p0, Lcom/ub/main/login/ForgetPswVerifycode;->new_password:Ljava/lang/String;

    .line 298
    sget v3, Lcom/ub/main/util/UIConfig;->LEARN_PASSWORD_FLAG:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 299
    sget v4, Lcom/ub/main/util/UIConfig;->AUTO_LOGIN_FLAG:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 297
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ub/main/data/UserDataManage;->saveUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const/4 v0, 0x0

    .line 302
    iget-object v1, p0, Lcom/ub/main/login/ForgetPswVerifycode;->new_password:Ljava/lang/String;

    sput-object v1, Lcom/ub/main/data/UserInfoBean;->USER_PASSWORD:Ljava/lang/String;

    .line 303
    iget-object v1, p0, Lcom/ub/main/login/ForgetPswVerifycode;->new_password:Ljava/lang/String;

    invoke-static {v1}, Lcom/ub/main/util/Tool;->UTFCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ub/main/util/Tool;->getUserPasswordMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ub/main/data/UserInfoBean;->USER_PASSWORD_MD5:Ljava/lang/String;

    .line 305
    iget-object v1, p0, Lcom/ub/main/login/ForgetPswVerifycode;->TAG:Ljava/lang/String;

    const-string v2, "+++++\u91cd\u7f6e\u65b0\u5bc6\u7801\u6210\u529f+++++"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v1, "\u91cd\u7f6e\u65b0\u5bc6\u7801\u6210\u529f\uff01"

    invoke-static {p0, v1}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 308
    const-class v1, Lcom/ub/main/login/LoginUI;

    invoke-static {p0, v1}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 309
    invoke-virtual {p0}, Lcom/ub/main/login/ForgetPswVerifycode;->finish()V

    goto :goto_0

    .line 312
    .end local v0           #userDataManage:Lcom/ub/main/data/UserDataManage;
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 313
    const-string v2, "\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 314
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 315
    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/ub/main/login/ForgetPswVerifycode$6;

    invoke-direct {v3, p0}, Lcom/ub/main/login/ForgetPswVerifycode$6;-><init>(Lcom/ub/main/login/ForgetPswVerifycode;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 319
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 320
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ub/main/login/ForgetPswVerifycode;->isRestStart:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ub/main/login/ForgetPswVerifycode;->requestWindowFeature(I)Z

    .line 116
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/ub/main/login/ForgetPswVerifycode;->setContentView(I)V

    .line 118
    invoke-direct {p0}, Lcom/ub/main/login/ForgetPswVerifycode;->initModel()V

    .line 119
    invoke-direct {p0}, Lcom/ub/main/login/ForgetPswVerifycode;->initView()V

    .line 120
    invoke-direct {p0}, Lcom/ub/main/login/ForgetPswVerifycode;->initControl()V

    .line 121
    invoke-direct {p0}, Lcom/ub/main/login/ForgetPswVerifycode;->initLogic()V

    .line 122
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 326
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/ub/main/login/ForgetPswVerifycode;->finish()V

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/login/ForgetPswVerifycode;->isRestStart:Z

    .line 329
    const/4 v0, 0x1

    .line 331
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
