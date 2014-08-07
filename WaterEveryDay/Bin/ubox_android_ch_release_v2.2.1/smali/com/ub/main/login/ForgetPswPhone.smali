.class public Lcom/ub/main/login/ForgetPswPhone;
.super Lcom/ub/main/BaseActivity;
.source "ForgetPswPhone.java"


# instance fields
.field private account:Ljava/lang/String;

.field private account_et:Landroid/widget/EditText;

.field private back_bt:Landroid/widget/Button;

.field private entrance:I

.field private next_bt:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/ub/main/login/ForgetPswPhone;->account_et:Landroid/widget/EditText;

    .line 32
    iput-object v0, p0, Lcom/ub/main/login/ForgetPswPhone;->account:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/ub/main/login/ForgetPswPhone;->next_bt:Landroid/widget/Button;

    .line 40
    iput-object v0, p0, Lcom/ub/main/login/ForgetPswPhone;->back_bt:Landroid/widget/Button;

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/ub/main/login/ForgetPswPhone;->entrance:I

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/login/ForgetPswPhone;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswPhone;->account_et:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ub/main/login/ForgetPswPhone;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ub/main/login/ForgetPswPhone;->account:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/ub/main/login/ForgetPswPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/ub/main/login/ForgetPswPhone;->sendCode()V

    return-void
.end method

.method private initControl()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswPhone;->next_bt:Landroid/widget/Button;

    new-instance v1, Lcom/ub/main/login/ForgetPswPhone$1;

    invoke-direct {v1, p0}, Lcom/ub/main/login/ForgetPswPhone$1;-><init>(Lcom/ub/main/login/ForgetPswPhone;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswPhone;->back_bt:Landroid/widget/Button;

    new-instance v1, Lcom/ub/main/login/ForgetPswPhone$2;

    invoke-direct {v1, p0}, Lcom/ub/main/login/ForgetPswPhone$2;-><init>(Lcom/ub/main/login/ForgetPswPhone;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method private initView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 57
    const/high16 v4, 0x7f08

    invoke-virtual {p0, v4}, Lcom/ub/main/login/ForgetPswPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 58
    .local v0, head:Landroid/view/ViewGroup;
    const v4, 0x7f0800e7

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 59
    .local v3, title:Landroid/widget/TextView;
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    const-string v4, "\u5fd8\u8bb0\u5bc6\u7801"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v4, 0x7f0800ed

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/ub/main/login/ForgetPswPhone;->back_bt:Landroid/widget/Button;

    .line 62
    iget-object v4, p0, Lcom/ub/main/login/ForgetPswPhone;->back_bt:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 64
    const v4, 0x7f0800f5

    invoke-virtual {p0, v4}, Lcom/ub/main/login/ForgetPswPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 65
    .local v1, info_tv:Landroid/widget/TextView;
    const v4, 0x7f0800f6

    invoke-virtual {p0, v4}, Lcom/ub/main/login/ForgetPswPhone;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 66
    .local v2, pw_tv:Landroid/widget/TextView;
    const-string v4, "\u8bf7\u8f93\u5165\u60a8\u6ce8\u518c\u65f6\u7684\u624b\u673a\u53f7\uff0c\u5e76\u70b9\u51fb\u4e0b\u4e00\u6b65"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const-string v4, "\u624b\u673a\u53f7\uff1a"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v4, 0x7f0800f7

    invoke-virtual {p0, v4}, Lcom/ub/main/login/ForgetPswPhone;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/ub/main/login/ForgetPswPhone;->account_et:Landroid/widget/EditText;

    .line 70
    iget-object v4, p0, Lcom/ub/main/login/ForgetPswPhone;->account_et:Landroid/widget/EditText;

    const-string v5, "\u8f93\u5165\u60a8\u6ce8\u518c\u65f6\u7684\u624b\u673a\u53f7"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 72
    const v4, 0x7f0800f8

    invoke-virtual {p0, v4}, Lcom/ub/main/login/ForgetPswPhone;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/ub/main/login/ForgetPswPhone;->next_bt:Landroid/widget/Button;

    .line 73
    iget-object v4, p0, Lcom/ub/main/login/ForgetPswPhone;->next_bt:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 74
    return-void
.end method

.method private sendCode()V
    .locals 6

    .prologue
    .line 97
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_SMS_VALIDATECODE:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 98
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswPhone;->account:Ljava/lang/String;

    iget v2, p0, Lcom/ub/main/login/ForgetPswPhone;->entrance:I

    invoke-static {v0, v2}, Lcom/ub/main/util/NetConfig;->createGetVertifyPhoneString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 99
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u9a8c\u8bc1\u7801..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 97
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/login/ForgetPswPhone;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 100
    return-void
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 104
    const-string v1, "200"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "5006"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "phone_number"

    iget-object v2, p0, Lcom/ub/main/login/ForgetPswPhone;->account:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "5006"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    const-string v1, "5006"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_1
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_SMS_VALIDATECODE:Lcom/ub/main/util/NetConfig$HttpRequestId;

    if-ne v1, p1, :cond_2

    .line 110
    iget-object v1, p0, Lcom/ub/main/login/ForgetPswPhone;->TAG:Ljava/lang/String;

    const-string v2, "+++++\u53d1\u9001\u6210\u529f+++++"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_2
    const-class v1, Lcom/ub/main/login/ForgetPswVerifycode;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 116
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 114
    :cond_3
    invoke-virtual {p0}, Lcom/ub/main/login/ForgetPswPhone;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ub/main/login/ForgetPswPhone;->requestWindowFeature(I)Z

    .line 49
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/ub/main/login/ForgetPswPhone;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lcom/ub/main/login/ForgetPswPhone;->initView()V

    .line 52
    invoke-direct {p0}, Lcom/ub/main/login/ForgetPswPhone;->initControl()V

    .line 53
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 120
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/ub/main/login/ForgetPswPhone;->finish()V

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
