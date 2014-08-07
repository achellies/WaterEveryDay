.class public Lcom/ub/main/foodsale/BuyWaySelect;
.super Lcom/ub/main/BaseActivity;
.source "BuyWaySelect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;
    }
.end annotation


# static fields
.field public static final BUYWAY:Ljava/lang/String; = "buyway"

.field public static final HUODONG:Ljava/lang/String; = "huodong"


# instance fields
.field adapter:Lcom/ub/main/foodsale/BuyWaySelectAdapter;

.field private balance:Ljava/lang/String;

.field dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;",
            ">;"
        }
    .end annotation
.end field

.field listView:Lcom/ub/main/foodsale/UICornerListView;

.field private selectedId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 52
    const v5, 0x7f080055

    invoke-virtual {p0, v5}, Lcom/ub/main/foodsale/BuyWaySelect;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/ub/main/foodsale/UICornerListView;

    iput-object v5, p0, Lcom/ub/main/foodsale/BuyWaySelect;->listView:Lcom/ub/main/foodsale/UICornerListView;

    .line 54
    iget-object v5, p0, Lcom/ub/main/foodsale/BuyWaySelect;->listView:Lcom/ub/main/foodsale/UICornerListView;

    new-instance v6, Lcom/ub/main/foodsale/BuyWaySelect$1;

    invoke-direct {v6, p0}, Lcom/ub/main/foodsale/BuyWaySelect$1;-><init>(Lcom/ub/main/foodsale/BuyWaySelect;)V

    invoke-virtual {v5, v6}, Lcom/ub/main/foodsale/UICornerListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ub/main/foodsale/BuyWaySelect;->dataList:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p0}, Lcom/ub/main/foodsale/BuyWaySelect;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 73
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "money"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ub/main/foodsale/BuyWaySelect;->balance:Ljava/lang/String;

    .line 74
    const-string v5, "id"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ub/main/foodsale/BuyWaySelect;->selectedId:Ljava/lang/String;

    .line 76
    new-instance v1, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;

    invoke-direct {v1, p0}, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;-><init>(Lcom/ub/main/foodsale/BuyWaySelect;)V

    .line 77
    .local v1, data:Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;
    const-string v5, "0"

    invoke-virtual {v1, v5}, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;->setId(Ljava/lang/String;)V

    .line 78
    const-string v5, "\u53cb\u5b9d\u94b1\u5305"

    invoke-virtual {v1, v5}, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;->setTitle(Ljava/lang/String;)V

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u4f59\u989d"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ub/main/foodsale/BuyWaySelect;->balance:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u5143"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;->setDetail(Ljava/lang/String;)V

    .line 80
    iget-object v5, p0, Lcom/ub/main/foodsale/BuyWaySelect;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;

    .end local v1           #data:Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;
    invoke-direct {v1, p0}, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;-><init>(Lcom/ub/main/foodsale/BuyWaySelect;)V

    .line 83
    .restart local v1       #data:Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;
    const-string v5, "1"

    invoke-virtual {v1, v5}, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;->setId(Ljava/lang/String;)V

    .line 84
    const-string v5, "\u652f\u4ed8\u5b9d"

    invoke-virtual {v1, v5}, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;->setTitle(Ljava/lang/String;)V

    .line 85
    iget-object v5, p0, Lcom/ub/main/foodsale/BuyWaySelect;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v5, Lcom/ub/main/foodsale/BuyWaySelectAdapter;

    invoke-virtual {p0}, Lcom/ub/main/foodsale/BuyWaySelect;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/ub/main/foodsale/BuyWaySelectAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/ub/main/foodsale/BuyWaySelect;->adapter:Lcom/ub/main/foodsale/BuyWaySelectAdapter;

    .line 87
    iget-object v5, p0, Lcom/ub/main/foodsale/BuyWaySelect;->adapter:Lcom/ub/main/foodsale/BuyWaySelectAdapter;

    iget-object v6, p0, Lcom/ub/main/foodsale/BuyWaySelect;->selectedId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/ub/main/foodsale/BuyWaySelectAdapter;->setSelectedId(Ljava/lang/String;)V

    .line 88
    iget-object v5, p0, Lcom/ub/main/foodsale/BuyWaySelect;->listView:Lcom/ub/main/foodsale/UICornerListView;

    iget-object v6, p0, Lcom/ub/main/foodsale/BuyWaySelect;->adapter:Lcom/ub/main/foodsale/BuyWaySelectAdapter;

    invoke-virtual {v5, v6}, Lcom/ub/main/foodsale/UICornerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    iget-object v5, p0, Lcom/ub/main/foodsale/BuyWaySelect;->adapter:Lcom/ub/main/foodsale/BuyWaySelectAdapter;

    iget-object v6, p0, Lcom/ub/main/foodsale/BuyWaySelect;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/ub/main/foodsale/BuyWaySelectAdapter;->setData(Ljava/util/ArrayList;)V

    .line 92
    const/high16 v5, 0x7f08

    invoke-virtual {p0, v5}, Lcom/ub/main/foodsale/BuyWaySelect;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 93
    .local v2, head:Landroid/view/ViewGroup;
    const v5, 0x7f0800e7

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 94
    .local v4, title1:Landroid/widget/TextView;
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    const-string v5, "\u652f\u4ed8\u65b9\u5f0f"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v5, 0x7f0800ed

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 97
    .local v0, backBtn:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    new-instance v5, Lcom/ub/main/foodsale/BuyWaySelect$2;

    invoke-direct {v5, p0}, Lcom/ub/main/foodsale/BuyWaySelect$2;-><init>(Lcom/ub/main/foodsale/BuyWaySelect;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
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
    .line 125
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/ub/main/foodsale/BuyWaySelect;->setContentView(I)V

    .line 47
    invoke-direct {p0}, Lcom/ub/main/foodsale/BuyWaySelect;->initView()V

    .line 48
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 111
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/ub/main/foodsale/BuyWaySelect;->finish()V

    .line 113
    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
