.class public Lcom/ub/main/account/Feedback;
.super Lcom/ub/main/BaseActivity;
.source "Feedback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Feedback"


# instance fields
.field private back:Landroid/widget/Button;

.field private button:Landroid/widget/Button;

.field private editText:Landroid/widget/EditText;

.field private head:Landroid/view/ViewGroup;

.field private isEnter:Z

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/ub/main/account/Feedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ub/main/account/Feedback;->head:Landroid/view/ViewGroup;

    .line 57
    iget-object v0, p0, Lcom/ub/main/account/Feedback;->head:Landroid/view/ViewGroup;

    const v1, 0x7f0800ed

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/account/Feedback;->back:Landroid/widget/Button;

    .line 58
    iget-object v0, p0, Lcom/ub/main/account/Feedback;->back:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/ub/main/account/Feedback;->head:Landroid/view/ViewGroup;

    const v1, 0x7f0800e7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/account/Feedback;->title:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/ub/main/account/Feedback;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/ub/main/account/Feedback;->title:Landroid/widget/TextView;

    const-string v1, "\u610f  \u89c1  \u53cd  \u9988"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lcom/ub/main/account/Feedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ub/main/account/Feedback;->editText:Landroid/widget/EditText;

    .line 66
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/ub/main/account/Feedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/account/Feedback;->button:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/ub/main/account/Feedback;->back:Landroid/widget/Button;

    new-instance v1, Lcom/ub/main/account/Feedback$1;

    invoke-direct {v1, p0}, Lcom/ub/main/account/Feedback$1;-><init>(Lcom/ub/main/account/Feedback;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iput-boolean v2, p0, Lcom/ub/main/account/Feedback;->isEnter:Z

    .line 73
    return-void
.end method


# virtual methods
.method public CommitFeedBack(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 90
    iget-object v2, p0, Lcom/ub/main/account/Feedback;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 92
    const-string v2, "\u63d0\u793a"

    const-string v3, "\u8bf7\u8f93\u5165\u60a8\u7684\u610f\u89c1\uff01"

    new-instance v4, Lcom/ub/main/account/Feedback$2;

    invoke-direct {v4, p0}, Lcom/ub/main/account/Feedback$2;-><init>(Lcom/ub/main/account/Feedback;)V

    invoke-static {p0, v2, v3, v4}, Lcom/ub/main/util/Tool;->showPositiveButtonDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-boolean v2, p0, Lcom/ub/main/account/Feedback;->isEnter:Z

    if-nez v2, :cond_0

    .line 100
    new-instance v0, Lcom/ub/main/net/HttpHandler;

    invoke-virtual {p0}, Lcom/ub/main/account/Feedback;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/ub/main/net/HttpHandler;-><init>(Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;)V

    .line 101
    .local v0, httpHandler:Lcom/ub/main/net/HttpHandler;
    new-instance v1, Lcom/ub/main/net/HttpStack;

    invoke-virtual {p0}, Lcom/ub/main/account/Feedback;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/ub/main/util/NetConfig$HttpRequestId;->FEEDBACK:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 102
    iget-object v4, p0, Lcom/ub/main/account/Feedback;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ub/main/util/NetConfig;->createFeedBackString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/ub/main/net/HttpStack;-><init>(Landroid/content/Context;Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Lcom/ub/main/net/HttpHandler;)V

    .line 104
    .local v1, httpStack:Lcom/ub/main/net/HttpStack;
    invoke-virtual {v1}, Lcom/ub/main/net/HttpStack;->start()V

    .line 105
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ub/main/account/Feedback;->isEnter:Z

    goto :goto_0
.end method

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
    .line 112
    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 115
    const-string v1, "\u60a8\u7684\u610f\u89c1\u5df2\u7ecf\u63d0\u4ea4\u6210\u529f\uff0c\u8c22\u8c22\u652f\u6301\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/ub/main/account/Feedback$3;

    invoke-direct {v1, p0}, Lcom/ub/main/account/Feedback$3;-><init>(Lcom/ub/main/account/Feedback;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 122
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ub/main/account/Feedback$4;

    invoke-direct {v2, p0}, Lcom/ub/main/account/Feedback$4;-><init>(Lcom/ub/main/account/Feedback;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 138
    :goto_0
    return-void

    .line 128
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 131
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ub/main/account/Feedback$5;

    invoke-direct {v2, p0}, Lcom/ub/main/account/Feedback$5;-><init>(Lcom/ub/main/account/Feedback;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/account/Feedback;->isEnter:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/ub/main/account/Feedback;->setContentView(I)V

    .line 50
    invoke-direct {p0}, Lcom/ub/main/account/Feedback;->initView()V

    .line 51
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 141
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/ub/main/account/Feedback;->finish()V

    .line 143
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 76
    invoke-virtual {p0}, Lcom/ub/main/account/Feedback;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :cond_0
    return v1
.end method
