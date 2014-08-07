.class public Lcom/ub/main/account/AccountAbout;
.super Lcom/ub/main/BaseActivity;
.source "AccountAbout.java"


# static fields
.field private static EMPHASIZE:I = 0x0

.field private static PERMISION:I = 0x0

.field private static PRIVACY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AccountAbout"

.field private static VERSION:I


# instance fields
.field private back:Landroid/widget/Button;

.field private infoRL:[Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/ub/main/account/AccountAbout;->VERSION:I

    .line 25
    sget v0, Lcom/ub/main/account/AccountAbout;->VERSION:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ub/main/account/AccountAbout;->PERMISION:I

    .line 26
    sget v0, Lcom/ub/main/account/AccountAbout;->PERMISION:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ub/main/account/AccountAbout;->PRIVACY:I

    .line 27
    sget v0, Lcom/ub/main/account/AccountAbout;->PRIVACY:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ub/main/account/AccountAbout;->EMPHASIZE:I

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/account/AccountAbout;->infoRL:[Landroid/widget/RelativeLayout;

    .line 22
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    const/high16 v2, 0x7f08

    invoke-virtual {p0, v2}, Lcom/ub/main/account/AccountAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 45
    .local v0, head:Landroid/view/ViewGroup;
    const v2, 0x7f0800ed

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ub/main/account/AccountAbout;->back:Landroid/widget/Button;

    .line 46
    iget-object v2, p0, Lcom/ub/main/account/AccountAbout;->back:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 47
    const v2, 0x7f0800e7

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 48
    .local v1, title:Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    const-string v2, "\u5173\u4e8e"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v2, p0, Lcom/ub/main/account/AccountAbout;->back:Landroid/widget/Button;

    new-instance v3, Lcom/ub/main/account/AccountAbout$1;

    invoke-direct {v3, p0}, Lcom/ub/main/account/AccountAbout$1;-><init>(Lcom/ub/main/account/AccountAbout;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 62
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountAbout;->requestWindowFeature(I)Z

    .line 37
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountAbout;->setContentView(I)V

    .line 38
    invoke-direct {p0}, Lcom/ub/main/account/AccountAbout;->initView()V

    .line 39
    return-void
.end method
