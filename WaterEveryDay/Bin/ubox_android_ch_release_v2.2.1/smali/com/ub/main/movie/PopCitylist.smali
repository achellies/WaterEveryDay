.class public Lcom/ub/main/movie/PopCitylist;
.super Landroid/app/AlertDialog;
.source "PopCitylist.java"


# instance fields
.field private cList:Lcom/ub/main/movie/CustomList;

.field private cancelBt:Landroid/widget/Button;

.field public city:Ljava/lang/String;

.field private cityList:Landroid/widget/ListView;

.field private comfirmBt:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private listContainer:Landroid/widget/LinearLayout;

.field private msgId:I

.field private pList:Lcom/ub/main/movie/CustomList;

.field private provinceList:Landroid/widget/ListView;

.field private selectedItemIndex:I

.field private selectedItemLL:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/ub/main/movie/PopCitylist;->selectedItemIndex:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/movie/PopCitylist;->selectedItemLL:Landroid/widget/LinearLayout;

    .line 43
    iput-object p1, p0, Lcom/ub/main/movie/PopCitylist;->context:Landroid/content/Context;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/movie/PopCitylist;)Lcom/ub/main/movie/CustomList;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ub/main/movie/PopCitylist;->pList:Lcom/ub/main/movie/CustomList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ub/main/movie/PopCitylist;Lcom/ub/main/movie/CustomList;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/ub/main/movie/PopCitylist;->setListSelectedStyle(Lcom/ub/main/movie/CustomList;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2(Lcom/ub/main/movie/PopCitylist;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/ub/main/movie/PopCitylist;->loadCitylist(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/ub/main/movie/PopCitylist;)Lcom/ub/main/movie/CustomList;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ub/main/movie/PopCitylist;->cList:Lcom/ub/main/movie/CustomList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ub/main/movie/PopCitylist;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ub/main/movie/PopCitylist;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ub/main/movie/PopCitylist;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ub/main/movie/PopCitylist;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ub/main/movie/PopCitylist;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/ub/main/movie/PopCitylist;->msgId:I

    return v0
.end method

.method private initView()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, -0x1

    .line 57
    const v0, 0x7f080064

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/PopCitylist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ub/main/movie/PopCitylist;->listContainer:Landroid/widget/LinearLayout;

    .line 58
    new-instance v0, Lcom/ub/main/movie/CustomList;

    iget-object v1, p0, Lcom/ub/main/movie/PopCitylist;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ub/main/movie/CustomList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ub/main/movie/PopCitylist;->pList:Lcom/ub/main/movie/CustomList;

    .line 59
    new-instance v0, Lcom/ub/main/movie/CustomList;

    iget-object v1, p0, Lcom/ub/main/movie/PopCitylist;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ub/main/movie/CustomList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ub/main/movie/PopCitylist;->cList:Lcom/ub/main/movie/CustomList;

    .line 60
    const v0, 0x7f080062

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/PopCitylist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/movie/PopCitylist;->cancelBt:Landroid/widget/Button;

    .line 61
    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/PopCitylist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/movie/PopCitylist;->comfirmBt:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/ub/main/movie/PopCitylist;->listContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ub/main/movie/PopCitylist;->pList:Lcom/ub/main/movie/CustomList;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v0, p0, Lcom/ub/main/movie/PopCitylist;->listContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ub/main/movie/PopCitylist;->cList:Lcom/ub/main/movie/CustomList;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-static {}, Lcom/ub/main/util/UIConfig;->setCityInfo()V

    .line 65
    invoke-direct {p0}, Lcom/ub/main/movie/PopCitylist;->loadProvincelist()V

    .line 66
    invoke-direct {p0}, Lcom/ub/main/movie/PopCitylist;->setClickListener()V

    .line 67
    return-void
.end method

.method private loadCitylist(Ljava/lang/String;)V
    .locals 4
    .parameter "province"

    .prologue
    .line 103
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    .line 104
    .local v0, cities:[Ljava/lang/String;
    const-class v2, Lcom/ub/main/login/RegisterUI;

    iget-object v3, p0, Lcom/ub/main/movie/PopCitylist;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    sget-object v2, Lcom/ub/main/util/UIConfig;->citys:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cities:[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 113
    .restart local v0       #cities:[Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 121
    :goto_1
    return-void

    .line 106
    :cond_1
    const-class v2, Lcom/ub/main/movie/MovieHome;

    iget-object v3, p0, Lcom/ub/main/movie/PopCitylist;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    sget-object v2, Lcom/ub/main/util/UIConfig;->citys:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 109
    sget-object v2, Lcom/ub/main/util/UIConfig;->citys:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cities:[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .restart local v0       #cities:[Ljava/lang/String;
    goto :goto_0

    .line 111
    :cond_2
    sget-object v2, Lcom/ub/main/util/UIConfig;->netCitys:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cities:[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .restart local v0       #cities:[Ljava/lang/String;
    goto :goto_0

    .line 114
    :cond_3
    iget-object v2, p0, Lcom/ub/main/movie/PopCitylist;->cList:Lcom/ub/main/movie/CustomList;

    invoke-virtual {v2, v0}, Lcom/ub/main/movie/CustomList;->loadScrollView([Ljava/lang/String;)V

    .line 115
    new-instance v1, Lcom/ub/main/movie/PopCitylist$2;

    invoke-direct {v1, p0}, Lcom/ub/main/movie/PopCitylist$2;-><init>(Lcom/ub/main/movie/PopCitylist;)V

    .line 120
    .local v1, clistener:Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/ub/main/movie/PopCitylist;->cList:Lcom/ub/main/movie/CustomList;

    invoke-virtual {v2, v1}, Lcom/ub/main/movie/CustomList;->setItemClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private loadProvincelist()V
    .locals 3

    .prologue
    .line 71
    const-class v1, Lcom/ub/main/login/RegisterUI;

    iget-object v2, p0, Lcom/ub/main/movie/PopCitylist;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/ub/main/movie/PopCitylist;->pList:Lcom/ub/main/movie/CustomList;

    sget-object v2, Lcom/ub/main/util/UIConfig;->provinces:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ub/main/movie/CustomList;->loadScrollView([Ljava/lang/String;)V

    .line 81
    :cond_0
    :goto_0
    new-instance v0, Lcom/ub/main/movie/PopCitylist$1;

    invoke-direct {v0, p0}, Lcom/ub/main/movie/PopCitylist$1;-><init>(Lcom/ub/main/movie/PopCitylist;)V

    .line 87
    .local v0, plistener:Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/ub/main/movie/PopCitylist;->pList:Lcom/ub/main/movie/CustomList;

    invoke-virtual {v1, v0}, Lcom/ub/main/movie/CustomList;->setItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void

    .line 73
    .end local v0           #plistener:Landroid/view/View$OnClickListener;
    :cond_1
    const-class v1, Lcom/ub/main/movie/MovieHome;

    iget-object v2, p0, Lcom/ub/main/movie/PopCitylist;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    sget-object v1, Lcom/ub/main/util/UIConfig;->netProvinces:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 76
    iget-object v1, p0, Lcom/ub/main/movie/PopCitylist;->pList:Lcom/ub/main/movie/CustomList;

    sget-object v2, Lcom/ub/main/util/UIConfig;->netProvinces:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ub/main/movie/CustomList;->loadScrollView([Ljava/lang/String;)V

    .line 79
    :goto_1
    sget-object v1, Lcom/ub/main/util/UIConfig;->netProvinces:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/ub/main/movie/PopCitylist;->loadCitylist(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/ub/main/movie/PopCitylist;->pList:Lcom/ub/main/movie/CustomList;

    sget-object v2, Lcom/ub/main/util/UIConfig;->provinces:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ub/main/movie/CustomList;->loadScrollView([Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setClickListener()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/ub/main/movie/PopCitylist;->cancelBt:Landroid/widget/Button;

    new-instance v1, Lcom/ub/main/movie/PopCitylist$3;

    invoke-direct {v1, p0}, Lcom/ub/main/movie/PopCitylist$3;-><init>(Lcom/ub/main/movie/PopCitylist;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/ub/main/movie/PopCitylist;->comfirmBt:Landroid/widget/Button;

    new-instance v1, Lcom/ub/main/movie/PopCitylist$4;

    invoke-direct {v1, p0}, Lcom/ub/main/movie/PopCitylist$4;-><init>(Lcom/ub/main/movie/PopCitylist;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void
.end method

.method private setListSelectedStyle(Lcom/ub/main/movie/CustomList;Landroid/view/View;)V
    .locals 5
    .parameter "list"
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-virtual {p1}, Lcom/ub/main/movie/CustomList;->getItems()[Lcom/ub/main/movie/Label;

    move-result-object v1

    .line 92
    .local v1, items:[Lcom/ub/main/movie/Label;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 97
    const v2, 0x7f020066

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    move-object v2, p2

    .line 98
    check-cast v2, Lcom/ub/main/movie/Label;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ub/main/movie/Label;->setSelected(Z)V

    .line 99
    check-cast p2, Lcom/ub/main/movie/Label;

    .end local p2
    const v2, 0x7f040001

    invoke-virtual {p2, v2}, Lcom/ub/main/movie/Label;->setTextColor(I)V

    .line 100
    return-void

    .line 93
    .restart local p2
    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2, v4}, Lcom/ub/main/movie/Label;->setBackgroundResource(I)V

    .line 94
    aget-object v2, v1, v0

    invoke-virtual {v2, v4}, Lcom/ub/main/movie/Label;->setSelected(Z)V

    .line 95
    aget-object v2, v1, v0

    const v3, 0x7f040006

    invoke-virtual {v2, v3}, Lcom/ub/main/movie/Label;->setTextColor(I)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/ub/main/movie/PopCitylist;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/ub/main/movie/PopCitylist;->msgId:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/PopCitylist;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/ub/main/movie/PopCitylist;->initView()V

    .line 54
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/ub/main/movie/PopCitylist;->handler:Landroid/os/Handler;

    .line 174
    return-void
.end method

.method public setMsgId(I)V
    .locals 0
    .parameter "msgId"

    .prologue
    .line 169
    iput p1, p0, Lcom/ub/main/movie/PopCitylist;->msgId:I

    .line 170
    return-void
.end method
