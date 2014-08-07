.class public Lcom/ub/main/login/LoginUI;
.super Lcom/ub/main/BaseActivity;
.source "LoginUI.java"


# instance fields
.field private accountET:Landroid/widget/EditText;

.field private forgetPW:Landroid/widget/TextView;

.field private isEnter:Z

.field private learnpwdCB:Landroid/widget/CheckBox;

.field private loginBT:Landroid/widget/Button;

.field private loginDialog:Landroid/app/ProgressDialog;

.field private pwdET:Landroid/widget/EditText;

.field private regBT:Landroid/widget/Button;

.field private userDataManage:Lcom/ub/main/data/UserDataManage;

.field private username:Ljava/lang/String;

.field private userpwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/ub/main/login/LoginUI;->loginBT:Landroid/widget/Button;

    .line 49
    iput-object v0, p0, Lcom/ub/main/login/LoginUI;->regBT:Landroid/widget/Button;

    .line 53
    iput-object v0, p0, Lcom/ub/main/login/LoginUI;->accountET:Landroid/widget/EditText;

    .line 57
    iput-object v0, p0, Lcom/ub/main/login/LoginUI;->pwdET:Landroid/widget/EditText;

    .line 61
    iput-object v0, p0, Lcom/ub/main/login/LoginUI;->userpwd:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/ub/main/login/LoginUI;->loginDialog:Landroid/app/ProgressDialog;

    .line 69
    iput-object v0, p0, Lcom/ub/main/login/LoginUI;->learnpwdCB:Landroid/widget/CheckBox;

    .line 73
    iput-object v0, p0, Lcom/ub/main/login/LoginUI;->forgetPW:Landroid/widget/TextView;

    .line 77
    iput-object v0, p0, Lcom/ub/main/login/LoginUI;->username:Ljava/lang/String;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ub/main/login/LoginUI;->isEnter:Z

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/login/LoginUI;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ub/main/login/LoginUI;->accountET:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ub/main/login/LoginUI;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/ub/main/login/LoginUI;->username:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/ub/main/login/LoginUI;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ub/main/login/LoginUI;->pwdET:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ub/main/login/LoginUI;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ub/main/login/LoginUI;->userpwd:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/ub/main/login/LoginUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ub/main/login/LoginUI;->username:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ub/main/login/LoginUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ub/main/login/LoginUI;->userpwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ub/main/login/LoginUI;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-direct {p0, p1, p2, p3}, Lcom/ub/main/login/LoginUI;->login(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$7(Lcom/ub/main/login/LoginUI;Lcom/ub/main/data/UserDataManage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/ub/main/login/LoginUI;->userDataManage:Lcom/ub/main/data/UserDataManage;

    return-void
.end method

.method static synthetic access$8(Lcom/ub/main/login/LoginUI;)Lcom/ub/main/data/UserDataManage;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ub/main/login/LoginUI;->userDataManage:Lcom/ub/main/data/UserDataManage;

    return-object v0
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 94
    const/high16 v2, 0x7f08

    invoke-virtual {p0, v2}, Lcom/ub/main/login/LoginUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 95
    .local v0, head:Landroid/view/ViewGroup;
    const v2, 0x7f0800e7

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 96
    .local v1, title:Landroid/widget/TextView;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    const-string v2, "\u767b\u5f55"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v2, 0x7f0800f4

    invoke-virtual {p0, v2}, Lcom/ub/main/login/LoginUI;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ub/main/login/LoginUI;->loginBT:Landroid/widget/Button;

    .line 100
    const v2, 0x7f0800f3

    invoke-virtual {p0, v2}, Lcom/ub/main/login/LoginUI;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ub/main/login/LoginUI;->regBT:Landroid/widget/Button;

    .line 101
    const v2, 0x7f0800ef

    invoke-virtual {p0, v2}, Lcom/ub/main/login/LoginUI;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/ub/main/login/LoginUI;->accountET:Landroid/widget/EditText;

    .line 102
    const v2, 0x7f0800f0

    invoke-virtual {p0, v2}, Lcom/ub/main/login/LoginUI;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/ub/main/login/LoginUI;->pwdET:Landroid/widget/EditText;

    .line 103
    const v2, 0x7f0800f1

    invoke-virtual {p0, v2}, Lcom/ub/main/login/LoginUI;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/ub/main/login/LoginUI;->learnpwdCB:Landroid/widget/CheckBox;

    .line 104
    const v2, 0x7f0800f2

    invoke-virtual {p0, v2}, Lcom/ub/main/login/LoginUI;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ub/main/login/LoginUI;->forgetPW:Landroid/widget/TextView;

    .line 105
    invoke-direct {p0}, Lcom/ub/main/login/LoginUI;->setClickListener()V

    .line 107
    new-instance v2, Lcom/ub/main/data/UserDataManage;

    invoke-virtual {p0}, Lcom/ub/main/login/LoginUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ub/main/data/UserDataManage;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ub/main/login/LoginUI;->userDataManage:Lcom/ub/main/data/UserDataManage;

    .line 110
    sget v2, Lcom/ub/main/util/UIConfig;->LEARN_PASSWORD_FLAG:I

    sget v3, Lcom/ub/main/util/UIConfig;->TRUE:I

    if-ne v2, v3, :cond_1

    .line 111
    iget-object v2, p0, Lcom/ub/main/login/LoginUI;->userDataManage:Lcom/ub/main/data/UserDataManage;

    invoke-virtual {v2}, Lcom/ub/main/data/UserDataManage;->getUserData()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "username"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/ub/main/login/LoginUI;->username:Ljava/lang/String;

    .line 112
    iget-object v2, p0, Lcom/ub/main/login/LoginUI;->userDataManage:Lcom/ub/main/data/UserDataManage;

    invoke-virtual {v2}, Lcom/ub/main/data/UserDataManage;->getUserData()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "userpwd"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/ub/main/login/LoginUI;->userpwd:Ljava/lang/String;

    .line 113
    iget-object v2, p0, Lcom/ub/main/login/LoginUI;->username:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/ub/main/login/LoginUI;->accountET:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/ub/main/login/LoginUI;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/ub/main/login/LoginUI;->learnpwdCB:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/ub/main/login/LoginUI;->learnpwdCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private login(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "account"
    .parameter "password"
    .parameter "accountType"

    .prologue
    .line 214
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->LOGIN:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 215
    invoke-static {p1, p2, p3}, Lcom/ub/main/util/NetConfig;->creatLoginPostString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 216
    const-string v5, "\u6b63\u5728\u767b\u5f55..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 214
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/login/LoginUI;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method private setClickListener()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/ub/main/login/LoginUI;->regBT:Landroid/widget/Button;

    new-instance v1, Lcom/ub/main/login/LoginUI$1;

    invoke-direct {v1, p0}, Lcom/ub/main/login/LoginUI$1;-><init>(Lcom/ub/main/login/LoginUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/ub/main/login/LoginUI;->loginBT:Landroid/widget/Button;

    new-instance v1, Lcom/ub/main/login/LoginUI$2;

    invoke-direct {v1, p0}, Lcom/ub/main/login/LoginUI$2;-><init>(Lcom/ub/main/login/LoginUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/ub/main/login/LoginUI;->pwdET:Landroid/widget/EditText;

    new-instance v1, Lcom/ub/main/login/LoginUI$3;

    invoke-direct {v1, p0}, Lcom/ub/main/login/LoginUI$3;-><init>(Lcom/ub/main/login/LoginUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 192
    iget-object v0, p0, Lcom/ub/main/login/LoginUI;->learnpwdCB:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ub/main/login/LoginUI$4;

    invoke-direct {v1, p0}, Lcom/ub/main/login/LoginUI$4;-><init>(Lcom/ub/main/login/LoginUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 199
    iget-object v0, p0, Lcom/ub/main/login/LoginUI;->forgetPW:Landroid/widget/TextView;

    new-instance v1, Lcom/ub/main/login/LoginUI$5;

    invoke-direct {v1, p0}, Lcom/ub/main/login/LoginUI$5;-><init>(Lcom/ub/main/login/LoginUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    return-void
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 252
    move-object v0, p2

    .line 253
    .local v0, code:Ljava/lang/String;
    iget-object v2, p0, Lcom/ub/main/login/LoginUI;->jsonObject:Lorg/json/JSONObject;

    .line 254
    .local v2, json:Lorg/json/JSONObject;
    move-object v3, p3

    .line 257
    .local v3, msg:Ljava/lang/String;
    iget-object v4, p0, Lcom/ub/main/login/LoginUI;->update:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 258
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/ub/main/login/LoginUI;->isEnter:Z

    .line 259
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 260
    const-string v5, "\u63d0\u793a"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 261
    const-string v5, "\u5ba2\u6237\u7aef\u6709\u65b0\u7248\u672c\uff0c\u5efa\u8bae\u60a8\u5347\u7ea7\u540e\u4f7f\u7528\u3002"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 262
    const-string v5, "\u53d6\u6d88"

    new-instance v6, Lcom/ub/main/login/LoginUI$8;

    invoke-direct {v6, p0, v0, v2, v3}, Lcom/ub/main/login/LoginUI$8;-><init>(Lcom/ub/main/login/LoginUI;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 299
    const-string v5, "\u786e\u5b9a"

    new-instance v6, Lcom/ub/main/login/LoginUI$9;

    invoke-direct {v6, p0}, Lcom/ub/main/login/LoginUI$9;-><init>(Lcom/ub/main/login/LoginUI;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 318
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 370
    :cond_0
    iget-boolean v4, p0, Lcom/ub/main/login/LoginUI;->isEnter:Z

    if-eqz v4, :cond_2

    .line 371
    const-string v4, "200"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 372
    iget-object v4, p0, Lcom/ub/main/login/LoginUI;->username:Ljava/lang/String;

    sput-object v4, Lcom/ub/main/data/UserInfoBean;->USER_ACOUNT:Ljava/lang/String;

    .line 373
    iget-object v4, p0, Lcom/ub/main/login/LoginUI;->userpwd:Ljava/lang/String;

    sput-object v4, Lcom/ub/main/data/UserInfoBean;->USER_PASSWORD:Ljava/lang/String;

    .line 374
    iget-object v4, p0, Lcom/ub/main/login/LoginUI;->jsonObject:Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/ub/main/util/NetConfig;->saveUserInfo(Lorg/json/JSONObject;)Lcom/ub/main/data/UserInfoBean;

    move-result-object v4

    sput-object v4, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 375
    sget v4, Lcom/ub/main/util/UIConfig;->LEARN_PASSWORD_FLAG:I

    sget v5, Lcom/ub/main/util/UIConfig;->TRUE:I

    if-ne v4, v5, :cond_1

    .line 376
    new-instance v4, Lcom/ub/main/data/UserDataManage;

    invoke-direct {v4, p0}, Lcom/ub/main/data/UserDataManage;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/ub/main/login/LoginUI;->userDataManage:Lcom/ub/main/data/UserDataManage;

    .line 377
    iget-object v4, p0, Lcom/ub/main/login/LoginUI;->userDataManage:Lcom/ub/main/data/UserDataManage;

    iget-object v5, p0, Lcom/ub/main/login/LoginUI;->username:Ljava/lang/String;

    iget-object v6, p0, Lcom/ub/main/login/LoginUI;->userpwd:Ljava/lang/String;

    .line 378
    sget v7, Lcom/ub/main/util/UIConfig;->LEARN_PASSWORD_FLAG:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 379
    sget v8, Lcom/ub/main/util/UIConfig;->AUTO_LOGIN_FLAG:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 377
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/ub/main/data/UserDataManage;->saveUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 382
    .local v1, intent:Landroid/content/Intent;
    const-class v4, Lcom/ub/main/Hall;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 383
    const/high16 v4, 0x400

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 384
    const-string v4, "loginGoto"

    const-string v5, "true"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    invoke-virtual {p0, v1}, Lcom/ub/main/login/LoginUI;->startActivity(Landroid/content/Intent;)V

    .line 386
    invoke-virtual {p0}, Lcom/ub/main/login/LoginUI;->finish()V

    .line 398
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 388
    :cond_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 389
    const-string v5, "\u63d0\u793a"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 390
    invoke-virtual {v4, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 391
    const-string v5, "\u786e\u5b9a"

    new-instance v6, Lcom/ub/main/login/LoginUI$10;

    invoke-direct {v6, p0}, Lcom/ub/main/login/LoginUI$10;-><init>(Lcom/ub/main/login/LoginUI;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 395
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3}, Lcom/ub/main/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 132
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/ub/main/login/LoginUI;->finish()V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const/16 v1, 0x65

    if-ne p2, v1, :cond_0

    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 136
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/ub/main/Hall;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 137
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    const-string v1, "loginGoto"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v0}, Lcom/ub/main/login/LoginUI;->startActivity(Landroid/content/Intent;)V

    .line 140
    invoke-virtual {p0}, Lcom/ub/main/login/LoginUI;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ub/main/login/LoginUI;->requestWindowFeature(I)Z

    .line 89
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/ub/main/login/LoginUI;->setContentView(I)V

    .line 90
    invoke-direct {p0}, Lcom/ub/main/login/LoginUI;->initView()V

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 414
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 415
    iput-object v0, p0, Lcom/ub/main/login/LoginUI;->loginBT:Landroid/widget/Button;

    .line 416
    iput-object v0, p0, Lcom/ub/main/login/LoginUI;->regBT:Landroid/widget/Button;

    .line 417
    iput-object v0, p0, Lcom/ub/main/login/LoginUI;->accountET:Landroid/widget/EditText;

    .line 418
    iput-object v0, p0, Lcom/ub/main/login/LoginUI;->pwdET:Landroid/widget/EditText;

    .line 419
    iput-object v0, p0, Lcom/ub/main/login/LoginUI;->userpwd:Ljava/lang/String;

    .line 420
    iput-object v0, p0, Lcom/ub/main/login/LoginUI;->loginDialog:Landroid/app/ProgressDialog;

    .line 421
    iput-object v0, p0, Lcom/ub/main/login/LoginUI;->learnpwdCB:Landroid/widget/CheckBox;

    .line 422
    iput-object v0, p0, Lcom/ub/main/login/LoginUI;->forgetPW:Landroid/widget/TextView;

    .line 423
    iput-object v0, p0, Lcom/ub/main/login/LoginUI;->username:Ljava/lang/String;

    .line 424
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 425
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 226
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/ub/main/login/LoginUI;->quit()V

    .line 228
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 436
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onPause()V

    .line 437
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 403
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onResume()V

    .line 404
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 430
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onStart()V

    .line 431
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 408
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onStop()V

    .line 409
    return-void
.end method

.method public quit()V
    .locals 3

    .prologue
    .line 236
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 237
    const-string v1, "\u4f60\u786e\u5b9a\u8981\u79bb\u5f00?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 238
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ub/main/login/LoginUI$6;

    invoke-direct {v2, p0}, Lcom/ub/main/login/LoginUI$6;-><init>(Lcom/ub/main/login/LoginUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 244
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/ub/main/login/LoginUI$7;

    invoke-direct {v2, p0}, Lcom/ub/main/login/LoginUI$7;-><init>(Lcom/ub/main/login/LoginUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 248
    return-void
.end method
