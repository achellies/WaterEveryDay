.class public Lcom/ub/main/coupon/CouponList;
.super Lcom/ub/main/BaseActivity;
.source "CouponList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final PAGE_SIZE:I = 0xa

.field private static final YOUHUI_DETAIL_REQUEST_ID:I


# instance fields
.field private back:Landroid/widget/Button;

.field private couponId:Ljava/lang/String;

.field private couponList_adapter:Lcom/ub/main/coupon/CouponListAdapter;

.field private couponlist_listView:Landroid/widget/ListView;

.field getMoreBtn:Landroid/widget/Button;

.field private head:Landroid/view/ViewGroup;

.field linearLayout:Landroid/widget/LinearLayout;

.field private pageIndex:I

.field private pid:Ljava/lang/String;

.field private sid:Ljava/lang/String;

.field private ticketsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/data/Coupon;",
            ">;"
        }
    .end annotation
.end field

.field private title:Landroid/widget/TextView;

.field private totalCount:I

.field private unuseableClick:Landroid/view/View$OnClickListener;

.field private unuseableView:Landroid/view/View;

.field private vmid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/ub/main/coupon/CouponList;->pageIndex:I

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/coupon/CouponList;->pid:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/coupon/CouponList;->sid:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/coupon/CouponList;->couponId:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/coupon/CouponList;->vmid:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/coupon/CouponList;->ticketsList:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Lcom/ub/main/coupon/CouponList$1;

    invoke-direct {v0, p0}, Lcom/ub/main/coupon/CouponList$1;-><init>(Lcom/ub/main/coupon/CouponList;)V

    iput-object v0, p0, Lcom/ub/main/coupon/CouponList;->unuseableClick:Landroid/view/View$OnClickListener;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/coupon/CouponList;)Lcom/ub/main/coupon/CouponListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ub/main/coupon/CouponList;->couponList_adapter:Lcom/ub/main/coupon/CouponListAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ub/main/coupon/CouponList;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ub/main/coupon/CouponList;->couponId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/ub/main/coupon/CouponList;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ub/main/coupon/CouponList;->unuseableView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ub/main/coupon/CouponList;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponList;->back()V

    return-void
.end method

.method private back()V
    .locals 5

    .prologue
    .line 239
    const/4 v1, 0x0

    .line 241
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/ub/main/coupon/CouponList;->couponList_adapter:Lcom/ub/main/coupon/CouponListAdapter;

    invoke-virtual {v3}, Lcom/ub/main/coupon/CouponListAdapter;->getSelected()I

    move-result v2

    .line 242
    .local v2, selectPosition:I
    if-ltz v2, :cond_0

    .line 243
    iget-object v3, p0, Lcom/ub/main/coupon/CouponList;->couponList_adapter:Lcom/ub/main/coupon/CouponListAdapter;

    invoke-virtual {v3, v2}, Lcom/ub/main/coupon/CouponListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/data/Coupon;

    .line 244
    .local v0, coupon:Lcom/ub/main/data/Coupon;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 245
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "icon"

    invoke-virtual {v0}, Lcom/ub/main/data/Coupon;->getIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v3, "title"

    invoke-virtual {v0}, Lcom/ub/main/data/Coupon;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v3, "channel"

    invoke-virtual {v0}, Lcom/ub/main/data/Coupon;->getChannel_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v3, "id"

    invoke-virtual {v0}, Lcom/ub/main/data/Coupon;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v3, "oldprice"

    invoke-virtual {v0}, Lcom/ub/main/data/Coupon;->getOldprice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v3, "newprice"

    invoke-virtual {v0}, Lcom/ub/main/data/Coupon;->getNewprice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v3, "discountTypeId"

    invoke-virtual {v0}, Lcom/ub/main/data/Coupon;->getDiscount_type_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v3, "discount"

    invoke-virtual {v0}, Lcom/ub/main/data/Coupon;->getDiscount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    .end local v0           #coupon:Lcom/ub/main/data/Coupon;
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/ub/main/coupon/CouponList;->setResult(ILandroid/content/Intent;)V

    .line 255
    invoke-virtual {p0}, Lcom/ub/main/coupon/CouponList;->finish()V

    .line 256
    return-void
.end method

.method private getBestCoupon()V
    .locals 6

    .prologue
    .line 167
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->YOUHUI_BEST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 168
    iget v0, p0, Lcom/ub/main/coupon/CouponList;->pageIndex:I

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/ub/main/coupon/CouponList;->sid:Ljava/lang/String;

    iget-object v4, p0, Lcom/ub/main/coupon/CouponList;->pid:Ljava/lang/String;

    iget-object v5, p0, Lcom/ub/main/coupon/CouponList;->vmid:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/ub/main/util/NetConfig;->createGetBestCouponPostString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u4f18\u60e0\u5238\u4fe1\u606f\u5217\u8868..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 167
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/coupon/CouponList;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method private initControl()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ub/main/coupon/CouponList;->back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/ub/main/coupon/CouponList;->getMoreBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 91
    const v1, 0x7f080016

    invoke-virtual {p0, v1}, Lcom/ub/main/coupon/CouponList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/ub/main/coupon/CouponList;->head:Landroid/view/ViewGroup;

    .line 94
    iget-object v1, p0, Lcom/ub/main/coupon/CouponList;->head:Landroid/view/ViewGroup;

    const v2, 0x7f0800e7

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ub/main/coupon/CouponList;->title:Landroid/widget/TextView;

    .line 95
    iget-object v1, p0, Lcom/ub/main/coupon/CouponList;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v1, p0, Lcom/ub/main/coupon/CouponList;->title:Landroid/widget/TextView;

    const-string v2, "\u9009\u62e9\u4e00\u5f20\u4f18\u60e0\u5238"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, p0, Lcom/ub/main/coupon/CouponList;->head:Landroid/view/ViewGroup;

    const v2, 0x7f0800ed

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ub/main/coupon/CouponList;->back:Landroid/widget/Button;

    .line 99
    iget-object v1, p0, Lcom/ub/main/coupon/CouponList;->back:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 101
    const v1, 0x7f080086

    invoke-virtual {p0, v1}, Lcom/ub/main/coupon/CouponList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/ub/main/coupon/CouponList;->couponlist_listView:Landroid/widget/ListView;

    .line 102
    new-instance v1, Lcom/ub/main/coupon/CouponListAdapter;

    iget-object v2, p0, Lcom/ub/main/coupon/CouponList;->ticketsList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/ub/main/coupon/CouponListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/ub/main/coupon/CouponList;->couponList_adapter:Lcom/ub/main/coupon/CouponListAdapter;

    .line 103
    iget-object v1, p0, Lcom/ub/main/coupon/CouponList;->couponlist_listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ub/main/coupon/CouponList;->couponList_adapter:Lcom/ub/main/coupon/CouponListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    iget-object v1, p0, Lcom/ub/main/coupon/CouponList;->couponlist_listView:Landroid/widget/ListView;

    new-instance v2, Lcom/ub/main/coupon/CouponList$2;

    invoke-direct {v2, p0}, Lcom/ub/main/coupon/CouponList$2;-><init>(Lcom/ub/main/coupon/CouponList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 121
    const v1, 0x7f08002b

    invoke-virtual {p0, v1}, Lcom/ub/main/coupon/CouponList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ub/main/coupon/CouponList;->getMoreBtn:Landroid/widget/Button;

    .line 122
    iget-object v1, p0, Lcom/ub/main/coupon/CouponList;->getMoreBtn:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 123
    const v1, 0x7f080082

    invoke-virtual {p0, v1}, Lcom/ub/main/coupon/CouponList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ub/main/coupon/CouponList;->unuseableView:Landroid/view/View;

    .line 124
    iget-object v1, p0, Lcom/ub/main/coupon/CouponList;->unuseableView:Landroid/view/View;

    iget-object v2, p0, Lcom/ub/main/coupon/CouponList;->unuseableClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v1, p0, Lcom/ub/main/coupon/CouponList;->couponId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ub/main/coupon/CouponList;->couponId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/ub/main/coupon/CouponList;->unuseableView:Landroid/view/View;

    const v2, 0x7f080085

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 128
    .local v0, img:Landroid/widget/ImageView;
    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    iget-object v1, p0, Lcom/ub/main/coupon/CouponList;->couponList_adapter:Lcom/ub/main/coupon/CouponListAdapter;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ub/main/coupon/CouponListAdapter;->setSelected(I)V

    .line 130
    iget-object v1, p0, Lcom/ub/main/coupon/CouponList;->couponList_adapter:Lcom/ub/main/coupon/CouponListAdapter;

    invoke-virtual {v1}, Lcom/ub/main/coupon/CouponListAdapter;->notifyDataSetChanged()V

    .line 132
    .end local v0           #img:Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method private loadData()V
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/ub/main/coupon/CouponList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 159
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/coupon/CouponList;->sid:Ljava/lang/String;

    .line 160
    const-string v1, "pid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/coupon/CouponList;->pid:Ljava/lang/String;

    .line 161
    const-string v1, "couponId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/coupon/CouponList;->couponId:Ljava/lang/String;

    .line 162
    const-string v1, "vmid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/coupon/CouponList;->vmid:Ljava/lang/String;

    .line 163
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponList;->getBestCoupon()V

    .line 164
    return-void
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 275
    const-string v8, "200"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 276
    sget-object v8, Lcom/ub/main/util/NetConfig$HttpRequestId;->YOUHUI_BEST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    if-ne v8, p1, :cond_1

    .line 278
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonObject:Lorg/json/JSONObject;

    const-string v9, "couponList"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "data"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    iput-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    .line 279
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 281
    .local v5, length:I
    new-instance v0, Lcom/ub/main/data/BestCouponBean;

    invoke-direct {v0}, Lcom/ub/main/data/BestCouponBean;-><init>()V

    .line 282
    .local v0, bean:Lcom/ub/main/data/BestCouponBean;
    new-instance v2, Lcom/ub/main/data/Coupon;

    invoke-direct {v2}, Lcom/ub/main/data/Coupon;-><init>()V

    .line 283
    .local v2, coupon:Lcom/ub/main/data/Coupon;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v5, :cond_2

    .line 315
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonObject:Lorg/json/JSONObject;

    const-string v9, "couponList"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "data_count"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/ub/main/data/BestCouponBean;->data_count:Ljava/lang/String;

    .line 317
    invoke-virtual {v0}, Lcom/ub/main/data/BestCouponBean;->getCouponList()Ljava/util/ArrayList;

    move-result-object v6

    .line 320
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/data/Coupon;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_3

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/ub/main/coupon/CouponList;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "\u6682\u65f6\u6ca1\u6709\u4f18\u60e0\u5238\u53ef\u4ee5\u4f7f\u7528"

    invoke-static {v8, v9}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 346
    .end local v0           #bean:Lcom/ub/main/data/BestCouponBean;
    .end local v2           #coupon:Lcom/ub/main/data/Coupon;
    .end local v3           #i:I
    .end local v5           #length:I
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/data/Coupon;>;"
    :cond_1
    :goto_1
    return-void

    .line 284
    .restart local v0       #bean:Lcom/ub/main/data/BestCouponBean;
    .restart local v2       #coupon:Lcom/ub/main/data/Coupon;
    .restart local v3       #i:I
    .restart local v5       #length:I
    :cond_2
    new-instance v2, Lcom/ub/main/data/Coupon;

    .end local v2           #coupon:Lcom/ub/main/data/Coupon;
    invoke-direct {v2}, Lcom/ub/main/data/Coupon;-><init>()V

    .line 286
    .restart local v2       #coupon:Lcom/ub/main/data/Coupon;
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "brief"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setBrief(Ljava/lang/String;)V

    .line 287
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "can_use"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setCan_use(Ljava/lang/String;)V

    .line 288
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "channel"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setChannel_id(Ljava/lang/String;)V

    .line 289
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "coupon_sn"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setCoupon_sn(Ljava/lang/String;)V

    .line 290
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "created"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setCreated(Ljava/lang/String;)V

    .line 291
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "cut_amount"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setCut_amount(Ljava/lang/String;)V

    .line 292
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "discount"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setDiscount(Ljava/lang/String;)V

    .line 293
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "discount_type_id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setDiscount_type_id(Ljava/lang/String;)V

    .line 294
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "discount_type_name"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setDiscount_type_name(Ljava/lang/String;)V

    .line 295
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "exclude_thirdparty_id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setExclude_thirdparty_id(Ljava/lang/String;)V

    .line 296
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "expire_time"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setExpire_time(Ljava/lang/String;)V

    .line 297
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "gift_user_id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setGift_user_id(Ljava/lang/String;)V

    .line 298
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "icon"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setIcon(Ljava/lang/String;)V

    .line 299
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setId(Ljava/lang/String;)V

    .line 300
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "oldPrice"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setOldprice(Ljava/lang/String;)V

    .line 301
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "seller_id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setSeller_id(Ljava/lang/String;)V

    .line 302
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "thirdparty_id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setThirdparty_id(Ljava/lang/String;)V

    .line 303
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "title"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setTitle(Ljava/lang/String;)V

    .line 304
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "use_limit_price"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setUse_limit_price(Ljava/lang/String;)V

    .line 305
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "use_nums"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setUse_nums(Ljava/lang/String;)V

    .line 306
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "use_nums_limit"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setUse_nums_limit(Ljava/lang/String;)V

    .line 307
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "user_id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setUser_id(Ljava/lang/String;)V

    .line 308
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "user_rank"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setUser_rank(Ljava/lang/String;)V

    .line 309
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "modified"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setModified(Ljava/lang/String;)V

    .line 310
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "status"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setStatus(Ljava/lang/String;)V

    .line 311
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "newPrice"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ub/main/data/Coupon;->setNewprice(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0, v2}, Lcom/ub/main/data/BestCouponBean;->addCoupon(Lcom/ub/main/data/Coupon;)V

    .line 283
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 323
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/data/Coupon;>;"
    :cond_3
    iget v8, p0, Lcom/ub/main/coupon/CouponList;->pageIndex:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/ub/main/coupon/CouponList;->pageIndex:I

    .line 324
    invoke-static {}, Lcom/ub/main/data/BestCouponBean;->getData_count()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, count:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/ub/main/coupon/CouponList;->totalCount:I

    .line 326
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->ticketsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 327
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->ticketsList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 328
    .local v7, num:I
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->getMoreBtn:Landroid/widget/Button;

    if-eqz v8, :cond_4

    iget v8, p0, Lcom/ub/main/coupon/CouponList;->totalCount:I

    if-ge v7, v8, :cond_4

    .line 329
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->getMoreBtn:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 333
    :goto_2
    const/4 v3, 0x0

    :goto_3
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->ticketsList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v3, v8, :cond_5

    .line 340
    :goto_4
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->couponList_adapter:Lcom/ub/main/coupon/CouponListAdapter;

    invoke-virtual {v8}, Lcom/ub/main/coupon/CouponListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 331
    :cond_4
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->getMoreBtn:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 334
    :cond_5
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->ticketsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ub/main/data/Coupon;

    .line 335
    .local v4, item:Lcom/ub/main/data/Coupon;
    invoke-virtual {v4}, Lcom/ub/main/data/Coupon;->getId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/ub/main/coupon/CouponList;->couponId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 336
    iget-object v8, p0, Lcom/ub/main/coupon/CouponList;->couponList_adapter:Lcom/ub/main/coupon/CouponListAdapter;

    invoke-virtual {v8, v3}, Lcom/ub/main/coupon/CouponListAdapter;->setSelected(I)V

    goto :goto_4

    .line 333
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 344
    .end local v0           #bean:Lcom/ub/main/data/BestCouponBean;
    .end local v1           #count:Ljava/lang/String;
    .end local v2           #coupon:Lcom/ub/main/data/Coupon;
    .end local v3           #i:I
    .end local v4           #item:Lcom/ub/main/data/Coupon;
    .end local v5           #length:I
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/data/Coupon;>;"
    .end local v7           #num:I
    :cond_7
    invoke-virtual {p0}, Lcom/ub/main/coupon/CouponList;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "\u7f51\u7edc\u9519\u8bef,\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    invoke-static {v8, v9}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 260
    packed-switch p1, :pswitch_data_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 262
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 264
    invoke-virtual {p0, v0, p3}, Lcom/ub/main/coupon/CouponList;->setResult(ILandroid/content/Intent;)V

    .line 265
    invoke-virtual {p0}, Lcom/ub/main/coupon/CouponList;->finish()V

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0800ed

    if-ne v4, v5, :cond_1

    .line 188
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponList;->back()V

    .line 189
    invoke-virtual {p0}, Lcom/ub/main/coupon/CouponList;->finish()V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f08002b

    if-ne v4, v5, :cond_3

    .line 193
    iget-object v4, p0, Lcom/ub/main/coupon/CouponList;->ticketsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 194
    .local v3, num:I
    iget-object v4, p0, Lcom/ub/main/coupon/CouponList;->getMoreBtn:Landroid/widget/Button;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/ub/main/coupon/CouponList;->totalCount:I

    if-ge v3, v4, :cond_2

    .line 195
    iget-object v4, p0, Lcom/ub/main/coupon/CouponList;->getMoreBtn:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 196
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponList;->getBestCoupon()V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v4, p0, Lcom/ub/main/coupon/CouponList;->getMoreBtn:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 201
    .end local v3           #num:I
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f080087

    if-ne v4, v5, :cond_0

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ub/main/data/Coupon;

    .line 205
    .local v1, coupon:Lcom/ub/main/data/Coupon;
    invoke-virtual {v1}, Lcom/ub/main/data/Coupon;->getUse_nums_limit()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1}, Lcom/ub/main/data/Coupon;->getUse_nums()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, coupon_num:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 208
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "title"

    invoke-virtual {v1}, Lcom/ub/main/data/Coupon;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v4, "coupon_num"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v4, "info"

    invoke-virtual {v1}, Lcom/ub/main/data/Coupon;->getBrief()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v4, "expire"

    invoke-virtual {v1}, Lcom/ub/main/data/Coupon;->getExpire_time()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v4, "channel"

    invoke-virtual {v1}, Lcom/ub/main/data/Coupon;->getChannel_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v4, "bigUrl"

    invoke-virtual {v1}, Lcom/ub/main/data/Coupon;->getIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v4, "icon"

    invoke-virtual {v1}, Lcom/ub/main/data/Coupon;->getIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v4, "breif"

    invoke-virtual {v1}, Lcom/ub/main/data/Coupon;->getBrief()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v4, "newprice"

    invoke-virtual {v1}, Lcom/ub/main/data/Coupon;->getNewprice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v4, "oldprice"

    invoke-virtual {v1}, Lcom/ub/main/data/Coupon;->getOldprice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v4, "id"

    invoke-virtual {v1}, Lcom/ub/main/data/Coupon;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-class v4, Lcom/ub/main/coupon/CouponDetail;

    invoke-static {p0, v4, v6, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponList;->requestWindowFeature(I)Z

    .line 79
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponList;->setContentView(I)V

    .line 81
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponList;->loadData()V

    .line 82
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponList;->initView()V

    .line 83
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponList;->initControl()V

    .line 84
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 351
    invoke-static {p0}, Lcom/ub/main/net/ImageLoadingTask2;->clearCacheImage(Landroid/content/Context;)V

    .line 352
    iget-object v0, p0, Lcom/ub/main/coupon/CouponList;->ticketsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/ub/main/coupon/CouponList;->ticketsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 355
    :cond_0
    iput-object v1, p0, Lcom/ub/main/coupon/CouponList;->ticketsList:Ljava/util/ArrayList;

    .line 356
    iput-object v1, p0, Lcom/ub/main/coupon/CouponList;->couponlist_listView:Landroid/widget/ListView;

    .line 357
    iput-object v1, p0, Lcom/ub/main/coupon/CouponList;->couponList_adapter:Lcom/ub/main/coupon/CouponListAdapter;

    .line 358
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 359
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
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponList;->back()V

    .line 229
    const/4 v0, 0x1

    .line 231
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onPause()V

    .line 180
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onResume()V

    .line 175
    return-void
.end method
