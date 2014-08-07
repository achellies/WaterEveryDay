.class public Lcom/ub/main/login/RegisterMain;
.super Lcom/ub/main/BaseActivity;
.source "RegisterMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final RESEND_CODE:Ljava/lang/String; = "\u91cd\u53d1\u9a8c\u8bc1\u7801 "


# instance fields
.field private account:Ljava/lang/String;

.field private back:Landroid/widget/Button;

.field private btnRegister:Landroid/widget/Button;

.field private btnValidate:Landroid/widget/Button;

.field private button1TextColor:I

.field private city:Ljava/lang/String;

.field private entrance:I

.field private etValidateCode:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field private head:Landroid/widget/FrameLayout;

.field private info:Landroid/widget/TextView;

.field private isStartSend:Z

.field private remain:I

.field private title:Landroid/widget/TextView;

.field private title2:Landroid/widget/TextView;

.field private userpwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 50
    const/16 v0, 0x3c

    iput v0, p0, Lcom/ub/main/login/RegisterMain;->remain:I

    .line 53
    new-instance v0, Lcom/ub/main/login/RegisterMain$1;

    invoke-direct {v0, p0}, Lcom/ub/main/login/RegisterMain$1;-><init>(Lcom/ub/main/login/RegisterMain;)V

    iput-object v0, p0, Lcom/ub/main/login/RegisterMain;->handler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/login/RegisterMain;)I
    .locals 1
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/ub/main/login/RegisterMain;->remain:I

    return v0
.end method

.method static synthetic access$1(Lcom/ub/main/login/RegisterMain;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput p1, p0, Lcom/ub/main/login/RegisterMain;->remain:I

    return-void
.end method

.method static synthetic access$2(Lcom/ub/main/login/RegisterMain;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain;->btnValidate:Landroid/widget/Button;

    return-object v0
.end method

.method private initControl()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain;->btnValidate:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain;->btnRegister:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void
.end method

.method private initLogic()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain;->btnValidate:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/ub/main/login/RegisterMain;->button1TextColor:I

    .line 94
    invoke-direct {p0}, Lcom/ub/main/login/RegisterMain;->showInfo()V

    .line 95
    invoke-direct {p0}, Lcom/ub/main/login/RegisterMain;->resetRemain()V

    .line 96
    return-void
.end method

.method private initModel()V
    .locals 2

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/login/RegisterMain;->isStartSend:Z

    .line 132
    invoke-virtual {p0}, Lcom/ub/main/login/RegisterMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "entrance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ub/main/login/RegisterMain;->entrance:I

    .line 133
    invoke-virtual {p0}, Lcom/ub/main/login/RegisterMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phone_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/login/RegisterMain;->account:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Lcom/ub/main/login/RegisterMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/login/RegisterMain;->userpwd:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lcom/ub/main/login/RegisterMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "city"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/login/RegisterMain;->city:Ljava/lang/String;

    .line 136
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/ub/main/login/RegisterMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/ub/main/login/RegisterMain;->head:Landroid/widget/FrameLayout;

    .line 142
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain;->head:Landroid/widget/FrameLayout;

    const v1, 0x7f0800ed

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/login/RegisterMain;->back:Landroid/widget/Button;

    .line 143
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain;->back:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain;->back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain;->head:Landroid/widget/FrameLayout;

    const v1, 0x7f0800e7

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/login/RegisterMain;->title:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain;->title:Landroid/widget/TextView;

    const-string v1, "\u6ce8               \u518c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const v0, 0x7f08008c

    invoke-virtual {p0, v0}, Lcom/ub/main/login/RegisterMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/login/RegisterMain;->info:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lcom/ub/main/login/RegisterMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ub/main/login/RegisterMain;->etValidateCode:Landroid/widget/EditText;

    .line 152
    const v0, 0x7f080100

    invoke-virtual {p0, v0}, Lcom/ub/main/login/RegisterMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/login/RegisterMain;->btnValidate:Landroid/widget/Button;

    .line 153
    const v0, 0x7f080101

    invoke-virtual {p0, v0}, Lcom/ub/main/login/RegisterMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/login/RegisterMain;->btnRegister:Landroid/widget/Button;

    .line 156
    return-void
.end method

.method private register()V
    .locals 7

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/ub/main/login/RegisterMain;->isStartSend:Z

    if-nez v0, :cond_0

    .line 217
    sget-object v6, Lcom/ub/main/util/NetConfig$HttpRequestId;->REGISTER:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 218
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain;->account:Ljava/lang/String;

    iget-object v1, p0, Lcom/ub/main/login/RegisterMain;->userpwd:Ljava/lang/String;

    const-string v2, ""

    iget-object v3, p0, Lcom/ub/main/login/RegisterMain;->etValidateCode:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ub/main/login/RegisterMain;->city:Ljava/lang/String;

    iget v5, p0, Lcom/ub/main/login/RegisterMain;->entrance:I

    invoke-static/range {v0 .. v5}, Lcom/ub/main/util/NetConfig;->creatRegisterPostString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 219
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u6570\u636e..."

    move-object v0, p0

    move-object v1, v6

    move-object v3, p0

    move-object v4, p0

    .line 217
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/login/RegisterMain;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ub/main/login/RegisterMain;->isStartSend:Z

    .line 222
    :cond_0
    return-void
.end method

.method private resendCode()V
    .locals 6

    .prologue
    .line 206
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_SMS_VALIDATECODE:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 207
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain;->account:Ljava/lang/String;

    iget v2, p0, Lcom/ub/main/login/RegisterMain;->entrance:I

    invoke-static {v0, v2}, Lcom/ub/main/util/NetConfig;->createGetVertifyPhoneString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 208
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u6570\u636e..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 206
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/login/RegisterMain;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method private resetRemain()V
    .locals 4

    .prologue
    .line 110
    const/16 v0, 0x3c

    iput v0, p0, Lcom/ub/main/login/RegisterMain;->remain:I

    .line 111
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain;->btnValidate:Landroid/widget/Button;

    iget v1, p0, Lcom/ub/main/login/RegisterMain;->button1TextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 112
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain;->btnValidate:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 114
    return-void
.end method

.method private showInfo()V
    .locals 3

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    .local v0, sb:Ljava/lang/StringBuffer;
    iget v1, p0, Lcom/ub/main/login/RegisterMain;->entrance:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 101
    const-string v1, "\u6211\u4eec\u5df2\u7ecf\u5411\u624b\u673a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/ub/main/login/RegisterMain;->account:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\u53d1\u9001\u4e86\u4e00\u6761\u9a8c\u8bc1\u7801\uff0c\u8bf7\u8f93\u5165\u60a8\u6536\u5230\u7684\u9a8c\u8bc1\u7801\u5b8c\u6210\u6ce8\u518c\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ub/main/login/RegisterMain;->info:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void

    .line 103
    :cond_1
    iget v1, p0, Lcom/ub/main/login/RegisterMain;->entrance:I

    if-nez v1, :cond_0

    .line 104
    const-string v1, "\u6211\u4eec\u5df2\u7ecf\u5411\u90ae\u7bb1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/ub/main/login/RegisterMain;->account:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\u53d1\u9001\u4e86\u4e00\u6761\u9a8c\u8bc1\u7801\uff0c\u8bf7\u8f93\u5165\u60a8\u6536\u5230\u7684\u9a8c\u8bc1\u7801\u5b8c\u6210\u6ce8\u518c\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public BackTolastActivity(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/ub/main/login/RegisterMain;->finish()V

    .line 122
    return-void
.end method

.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 238
    iget-object v1, p0, Lcom/ub/main/login/RegisterMain;->handler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 239
    const-string v1, "200"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_SMS_VALIDATECODE:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/ub/main/login/RegisterMain;->TAG:Ljava/lang/String;

    const-string v2, "+++++\u91cd\u65b0\u53d1\u9001\u6210\u529f+++++"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-direct {p0}, Lcom/ub/main/login/RegisterMain;->resetRemain()V

    .line 244
    iget-object v1, p0, Lcom/ub/main/login/RegisterMain;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->REGISTER:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/ub/main/login/RegisterMain;->jsonObject:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/ub/main/util/NetConfig;->saveUserInfo(Lorg/json/JSONObject;)Lcom/ub/main/data/UserInfoBean;

    move-result-object v1

    sput-object v1, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 249
    iget-object v1, p0, Lcom/ub/main/login/RegisterMain;->account:Ljava/lang/String;

    sput-object v1, Lcom/ub/main/data/UserInfoBean;->USER_ACOUNT:Ljava/lang/String;

    .line 250
    iget-object v1, p0, Lcom/ub/main/login/RegisterMain;->userpwd:Ljava/lang/String;

    sput-object v1, Lcom/ub/main/data/UserInfoBean;->USER_PASSWORD:Ljava/lang/String;

    .line 253
    new-instance v0, Lcom/ub/main/data/UserDataManage;

    invoke-direct {v0, p0}, Lcom/ub/main/data/UserDataManage;-><init>(Landroid/content/Context;)V

    .line 254
    .local v0, userDataManage:Lcom/ub/main/data/UserDataManage;
    iget-object v1, p0, Lcom/ub/main/login/RegisterMain;->account:Ljava/lang/String;

    iget-object v2, p0, Lcom/ub/main/login/RegisterMain;->userpwd:Ljava/lang/String;

    .line 255
    sget v3, Lcom/ub/main/util/UIConfig;->LEARN_PASSWORD_FLAG:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 256
    sget v4, Lcom/ub/main/util/UIConfig;->AUTO_LOGIN_FLAG:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ub/main/data/UserDataManage;->saveUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    sput-boolean v5, Lcom/ub/main/util/UIConfig;->ISRIGISTERINTER:Z

    .line 259
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/ub/main/login/RegisterMain;->setResult(I)V

    .line 260
    invoke-virtual {p0}, Lcom/ub/main/login/RegisterMain;->finish()V

    goto :goto_0

    .line 264
    .end local v0           #userDataManage:Lcom/ub/main/data/UserDataManage;
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 265
    const-string v2, "\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 266
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 267
    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/ub/main/login/RegisterMain$5;

    invoke-direct {v3, p0}, Lcom/ub/main/login/RegisterMain$5;-><init>(Lcom/ub/main/login/RegisterMain;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 271
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 272
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ub/main/login/RegisterMain;->isStartSend:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 164
    :sswitch_0
    invoke-virtual {p0}, Lcom/ub/main/login/RegisterMain;->finish()V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/login/RegisterMain;->isStartSend:Z

    goto :goto_0

    .line 168
    :sswitch_1
    invoke-direct {p0}, Lcom/ub/main/login/RegisterMain;->resendCode()V

    goto :goto_0

    .line 171
    :sswitch_2
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain;->etValidateCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "\u63d0\u793a"

    const-string v1, "\u9a8c\u8bc1\u7801\u8f93\u5165\u9519\u8bef"

    new-instance v2, Lcom/ub/main/login/RegisterMain$2;

    invoke-direct {v2, p0}, Lcom/ub/main/login/RegisterMain$2;-><init>(Lcom/ub/main/login/RegisterMain;)V

    invoke-static {p0, v0, v1, v2}, Lcom/ub/main/util/Tool;->showPositiveButtonDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/ub/main/login/RegisterMain;->etValidateCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 180
    const-string v0, "\u63d0\u793a"

    const-string v1, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    new-instance v2, Lcom/ub/main/login/RegisterMain$3;

    invoke-direct {v2, p0}, Lcom/ub/main/login/RegisterMain$3;-><init>(Lcom/ub/main/login/RegisterMain;)V

    invoke-static {p0, v0, v1, v2}, Lcom/ub/main/util/Tool;->showPositiveButtonDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 186
    :cond_1
    const-string v0, "^[0-9]*[1-9][0-9]*$"

    iget-object v1, p0, Lcom/ub/main/login/RegisterMain;->etValidateCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ub/main/util/Tool;->matchingText(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    const-string v0, "\u63d0\u793a"

    const-string v1, "\u9519\u8bef\u7684\u9a8c\u8bc1\u7801!"

    new-instance v2, Lcom/ub/main/login/RegisterMain$4;

    invoke-direct {v2, p0}, Lcom/ub/main/login/RegisterMain$4;-><init>(Lcom/ub/main/login/RegisterMain;)V

    invoke-static {p0, v0, v1, v2}, Lcom/ub/main/util/Tool;->showPositiveButtonDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 195
    :cond_2
    invoke-direct {p0}, Lcom/ub/main/login/RegisterMain;->register()V

    goto :goto_0

    .line 162
    :sswitch_data_0
    .sparse-switch
        0x7f0800ed -> :sswitch_0
        0x7f080100 -> :sswitch_1
        0x7f080101 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const-string v0, "RegisterMain"

    iput-object v0, p0, Lcom/ub/main/login/RegisterMain;->TAG:Ljava/lang/String;

    .line 84
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/ub/main/login/RegisterMain;->setContentView(I)V

    .line 85
    invoke-direct {p0}, Lcom/ub/main/login/RegisterMain;->initModel()V

    .line 86
    invoke-direct {p0}, Lcom/ub/main/login/RegisterMain;->initView()V

    .line 87
    invoke-direct {p0}, Lcom/ub/main/login/RegisterMain;->initControl()V

    .line 88
    invoke-direct {p0}, Lcom/ub/main/login/RegisterMain;->initLogic()V

    .line 90
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 227
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/ub/main/login/RegisterMain;->finish()V

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/login/RegisterMain;->isStartSend:Z

    .line 230
    const/4 v0, 0x1

    .line 232
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
