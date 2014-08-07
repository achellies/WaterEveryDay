.class public Lcom/ub/main/coupon/CouponHome;
.super Lcom/ub/main/BaseActivity;
.source "CouponHome.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ub/main/net/ImageLoadingObserver;


# static fields
.field public static needUpdate:Z = false

.field private static final pageSize:I = 0xa


# instance fields
.field private adapter:Lcom/ub/main/coupon/CouponAdapter;

.field private canuseButton:Landroid/widget/Button;

.field private dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/data/Coupon;",
            ">;"
        }
    .end annotation
.end field

.field dlg:Landroid/app/ProgressDialog;

.field private failButton:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;

.field private listView:Landroid/widget/ListView;

.field private moreButton:Landroid/widget/Button;

.field private noDataTextView:Landroid/widget/TextView;

.field private pageIndex:I

.field private status:Ljava/lang/String;

.field tag:Ljava/lang/String;

.field private totalNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ub/main/coupon/CouponHome;->needUpdate:Z

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 42
    const-string v0, "CouponHome"

    iput-object v0, p0, Lcom/ub/main/coupon/CouponHome;->tag:Ljava/lang/String;

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/ub/main/coupon/CouponHome;->pageIndex:I

    .line 303
    new-instance v0, Lcom/ub/main/coupon/CouponHome$1;

    invoke-direct {v0, p0}, Lcom/ub/main/coupon/CouponHome$1;-><init>(Lcom/ub/main/coupon/CouponHome;)V

    iput-object v0, p0, Lcom/ub/main/coupon/CouponHome;->handler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/coupon/CouponHome;)Lcom/ub/main/coupon/CouponAdapter;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ub/main/coupon/CouponHome;->adapter:Lcom/ub/main/coupon/CouponAdapter;

    return-object v0
.end method

.method private initControl()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/ub/main/coupon/CouponHome;->canuseButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/ub/main/coupon/CouponHome;->failButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/ub/main/coupon/CouponHome;->moreButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void
.end method

.method private initModel()V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    .line 138
    const/4 v0, 0x1

    iput v0, p0, Lcom/ub/main/coupon/CouponHome;->pageIndex:I

    .line 139
    const-string v0, "free"

    iput-object v0, p0, Lcom/ub/main/coupon/CouponHome;->status:Ljava/lang/String;

    .line 140
    new-instance v0, Lcom/ub/main/coupon/CouponAdapter;

    iget-object v1, p0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/ub/main/coupon/CouponAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/ub/main/coupon/CouponHome;->adapter:Lcom/ub/main/coupon/CouponAdapter;

    .line 141
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponHome;->sendNet()V

    .line 142
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x1

    .line 116
    const v0, 0x7f080074

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/coupon/CouponHome;->moreButton:Landroid/widget/Button;

    .line 117
    iget-object v0, p0, Lcom/ub/main/coupon/CouponHome;->moreButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    const v0, 0x7f080072

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/coupon/CouponHome;->noDataTextView:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/ub/main/coupon/CouponHome;->noDataTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    const v0, 0x7f08006f

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/coupon/CouponHome;->canuseButton:Landroid/widget/Button;

    .line 122
    iget-object v0, p0, Lcom/ub/main/coupon/CouponHome;->canuseButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setPressed(Z)V

    .line 123
    const v0, 0x7f080071

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/coupon/CouponHome;->failButton:Landroid/widget/Button;

    .line 126
    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ub/main/coupon/CouponHome;->listView:Landroid/widget/ListView;

    .line 127
    iget-object v0, p0, Lcom/ub/main/coupon/CouponHome;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ub/main/coupon/CouponHome;->adapter:Lcom/ub/main/coupon/CouponAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponHome;->resourceSet()V

    .line 129
    iget-object v0, p0, Lcom/ub/main/coupon/CouponHome;->canuseButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setPressed(Z)V

    .line 130
    iget-object v0, p0, Lcom/ub/main/coupon/CouponHome;->canuseButton:Landroid/widget/Button;

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 131
    return-void
.end method

.method private resourceSet()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 277
    iget-object v0, p0, Lcom/ub/main/coupon/CouponHome;->canuseButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPressed(Z)V

    .line 278
    iget-object v0, p0, Lcom/ub/main/coupon/CouponHome;->failButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPressed(Z)V

    .line 280
    iget-object v0, p0, Lcom/ub/main/coupon/CouponHome;->canuseButton:Landroid/widget/Button;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 281
    iget-object v0, p0, Lcom/ub/main/coupon/CouponHome;->failButton:Landroid/widget/Button;

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 283
    return-void
.end method

.method private sendNet()V
    .locals 6

    .prologue
    .line 293
    iget-object v0, p0, Lcom/ub/main/coupon/CouponHome;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "status=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ub/main/coupon/CouponHome;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/ub/main/coupon/CouponHome;->adapter:Lcom/ub/main/coupon/CouponAdapter;

    iget-object v1, p0, Lcom/ub/main/coupon/CouponHome;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ub/main/coupon/CouponAdapter;->setStatus(Ljava/lang/String;)V

    .line 298
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->YOUHUI_HOME_LIST_NEW:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 299
    iget v0, p0, Lcom/ub/main/coupon/CouponHome;->pageIndex:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ub/main/coupon/CouponHome;->status:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/ub/main/util/NetConfig;->createYouHuiHomeList_New(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u6570\u636e..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 298
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/coupon/CouponHome;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 301
    return-void
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 334
    const-string v15, "200"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 335
    sget-object v15, Lcom/ub/main/util/NetConfig$HttpRequestId;->YOUHUI_HOME_LIST_NEW:Lcom/ub/main/util/NetConfig$HttpRequestId;

    move-object/from16 v0, p1

    if-ne v15, v0, :cond_2

    .line 336
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->jsonObject:Lorg/json/JSONObject;

    const-string v16, "couponList"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 337
    .local v6, dataObj:Lorg/json/JSONObject;
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    .line 338
    .local v2, Coupon_Id_array:[Ljava/lang/String;
    const-string v15, "COUPONID"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/ub/main/coupon/CouponHome;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 339
    .local v13, shar_couponId_get:Landroid/content/SharedPreferences;
    const-string v15, "CouponIds"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v13, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 341
    .local v11, old_couponIds:Ljava/lang/String;
    const-string v15, "couponIds"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 342
    const-string v15, "couponIds"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 343
    .local v5, couponIds:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->tag:Ljava/lang/String;

    const-string v16, "!isNull"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 345
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->tag:Ljava/lang/String;

    const-string v16, "!isNull value"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v15, "COUPONID"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/ub/main/coupon/CouponHome;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 347
    .local v12, shar_couponId:Landroid/content/SharedPreferences;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 348
    .local v7, editor:Landroid/content/SharedPreferences$Editor;
    const-string v15, "CouponIds"

    invoke-interface {v7, v15, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 349
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 353
    .end local v5           #couponIds:Ljava/lang/String;
    .end local v7           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v12           #shar_couponId:Landroid/content/SharedPreferences;
    :cond_0
    const-string v15, "data_count"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 354
    .local v14, totalNumStr:Ljava/lang/String;
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_1

    .line 355
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/ub/main/coupon/CouponHome;->totalNum:I

    .line 357
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/ub/main/coupon/CouponHome;->totalNum:I

    if-gtz v15, :cond_3

    .line 359
    const-string v15, "\u6ca1\u6709\u4f18\u60e0\u4fe1\u606f!"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->noDataTextView:Landroid/widget/TextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->moreButton:Landroid/widget/Button;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setVisibility(I)V

    .line 434
    .end local v2           #Coupon_Id_array:[Ljava/lang/String;
    .end local v6           #dataObj:Lorg/json/JSONObject;
    .end local v11           #old_couponIds:Ljava/lang/String;
    .end local v13           #shar_couponId_get:Landroid/content/SharedPreferences;
    .end local v14           #totalNumStr:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 364
    .restart local v2       #Coupon_Id_array:[Ljava/lang/String;
    .restart local v6       #dataObj:Lorg/json/JSONObject;
    .restart local v11       #old_couponIds:Ljava/lang/String;
    .restart local v13       #shar_couponId_get:Landroid/content/SharedPreferences;
    .restart local v14       #totalNumStr:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->noDataTextView:Landroid/widget/TextView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    const-string v15, "data"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ub/main/coupon/CouponHome;->jsonArray:Lorg/json/JSONArray;

    .line 366
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 367
    .local v9, len:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    if-nez v15, :cond_4

    .line 368
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    .line 370
    :cond_4
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-lt v8, v9, :cond_6

    .line 416
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    if-nez v15, :cond_5

    .line 417
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    .line 419
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->tag:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "status ok=="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/coupon/CouponHome;->status:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->adapter:Lcom/ub/main/coupon/CouponAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/coupon/CouponHome;->status:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/ub/main/coupon/CouponAdapter;->setStatus(Ljava/lang/String;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_2

    .line 422
    move-object/from16 v0, p0

    iget v15, v0, Lcom/ub/main/coupon/CouponHome;->totalNum:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_a

    .line 423
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->moreButton:Landroid/widget/Button;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setVisibility(I)V

    .line 427
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->adapter:Lcom/ub/main/coupon/CouponAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/ub/main/coupon/CouponAdapter;->setData(Ljava/util/ArrayList;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->adapter:Lcom/ub/main/coupon/CouponAdapter;

    invoke-virtual {v15}, Lcom/ub/main/coupon/CouponAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 371
    :cond_6
    new-instance v3, Lcom/ub/main/data/Coupon;

    invoke-direct {v3}, Lcom/ub/main/data/Coupon;-><init>()V

    .line 373
    .local v3, coupon:Lcom/ub/main/data/Coupon;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v15, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "brief"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/ub/main/data/Coupon;->setBrief(Ljava/lang/String;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v15, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "channel"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/ub/main/data/Coupon;->setChannel_id(Ljava/lang/String;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v15, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "created"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/ub/main/data/Coupon;->setCreated(Ljava/lang/String;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v15, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "discount"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/ub/main/data/Coupon;->setDiscount(Ljava/lang/String;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v15, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "expire_time"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/ub/main/data/Coupon;->setExpire_time(Ljava/lang/String;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v15, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "icon"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/ub/main/data/Coupon;->setIcon(Ljava/lang/String;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v15, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "id"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 387
    .local v4, couponID:Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/ub/main/data/Coupon;->setId(Ljava/lang/String;)V

    .line 388
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 389
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const-string v16, "\\,"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 390
    const/4 v10, 0x0

    .local v10, newCouponId:I
    :goto_3
    array-length v15, v2

    if-lt v10, v15, :cond_7

    .line 405
    .end local v10           #newCouponId:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v15, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "title"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/ub/main/data/Coupon;->setTitle(Ljava/lang/String;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v15, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "use_nums"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/ub/main/data/Coupon;->setUse_nums(Ljava/lang/String;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v15, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "use_nums_limit"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/ub/main/data/Coupon;->setUse_nums_limit(Ljava/lang/String;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 391
    .restart local v10       #newCouponId:I
    :cond_7
    aget-object v15, v2, v10

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 392
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lcom/ub/main/data/Coupon;->setNewCoupon(Z)V

    goto :goto_4

    .line 395
    :cond_8
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/ub/main/data/Coupon;->setNewCoupon(Z)V

    .line 390
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 399
    .end local v10           #newCouponId:I
    :cond_9
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/ub/main/data/Coupon;->setNewCoupon(Z)V

    goto :goto_4

    .line 425
    .end local v3           #coupon:Lcom/ub/main/data/Coupon;
    .end local v4           #couponID:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/coupon/CouponHome;->moreButton:Landroid/widget/Button;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 432
    .end local v2           #Coupon_Id_array:[Ljava/lang/String;
    .end local v6           #dataObj:Lorg/json/JSONObject;
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v11           #old_couponIds:Ljava/lang/String;
    .end local v13           #shar_couponId_get:Landroid/content/SharedPreferences;
    .end local v14           #totalNumStr:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public ImageLoaded(Lcom/ub/main/net/ImageLoadingTaskInfo;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 438
    iget-object v1, p0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->id:I

    iget-object v2, p0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 439
    iget-object v1, p0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    iget v2, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/data/Coupon;

    .line 440
    .local v0, coupon:Lcom/ub/main/data/Coupon;
    iget-object v1, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/ub/main/data/Coupon;->setSmallIcon(Landroid/graphics/drawable/Drawable;)V

    .line 441
    iget-object v1, p0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    iget v2, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->id:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 444
    .end local v0           #coupon:Lcom/ub/main/data/Coupon;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 274
    :goto_0
    :pswitch_0
    return-void

    .line 199
    :pswitch_1
    iget-object v2, p0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/ub/main/coupon/CouponHome;->totalNum:I

    if-ge v2, v3, :cond_0

    .line 201
    iget v2, p0, Lcom/ub/main/coupon/CouponHome;->pageIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ub/main/coupon/CouponHome;->pageIndex:I

    .line 202
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponHome;->sendNet()V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/ub/main/coupon/CouponHome;->moreButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 211
    :pswitch_2
    const-string v2, "free"

    iput-object v2, p0, Lcom/ub/main/coupon/CouponHome;->status:Ljava/lang/String;

    .line 212
    iget-object v2, p0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, coupon:Lcom/ub/main/data/Coupon;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 222
    iget-object v2, p0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 224
    .end local v0           #coupon:Lcom/ub/main/data/Coupon;
    .end local v1           #i:I
    :cond_1
    iput v3, p0, Lcom/ub/main/coupon/CouponHome;->pageIndex:I

    .line 225
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponHome;->sendNet()V

    .line 226
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponHome;->resourceSet()V

    .line 227
    iget-object v2, p0, Lcom/ub/main/coupon/CouponHome;->canuseButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setPressed(Z)V

    .line 228
    iget-object v2, p0, Lcom/ub/main/coupon/CouponHome;->canuseButton:Landroid/widget/Button;

    const v3, 0x7f0200b4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 229
    iget-object v2, p0, Lcom/ub/main/coupon/CouponHome;->adapter:Lcom/ub/main/coupon/CouponAdapter;

    invoke-virtual {v2, v4}, Lcom/ub/main/coupon/CouponAdapter;->setData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 216
    .restart local v0       #coupon:Lcom/ub/main/data/Coupon;
    .restart local v1       #i:I
    :cond_2
    iget-object v2, p0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #coupon:Lcom/ub/main/data/Coupon;
    check-cast v0, Lcom/ub/main/data/Coupon;

    .line 217
    .restart local v0       #coupon:Lcom/ub/main/data/Coupon;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/ub/main/data/Coupon;->getSmallIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 218
    invoke-virtual {v0, v4}, Lcom/ub/main/data/Coupon;->setSmallIcon(Landroid/graphics/drawable/Drawable;)V

    .line 220
    :cond_3
    const/4 v0, 0x0

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 233
    .end local v0           #coupon:Lcom/ub/main/data/Coupon;
    .end local v1           #i:I
    :pswitch_3
    const-string v2, "voucher"

    iput-object v2, p0, Lcom/ub/main/coupon/CouponHome;->status:Ljava/lang/String;

    .line 234
    iget-object v2, p0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 235
    const/4 v0, 0x0

    .line 236
    .restart local v0       #coupon:Lcom/ub/main/data/Coupon;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v2, p0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_5

    .line 243
    iget-object v2, p0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 245
    .end local v0           #coupon:Lcom/ub/main/data/Coupon;
    .end local v1           #i:I
    :cond_4
    iput v3, p0, Lcom/ub/main/coupon/CouponHome;->pageIndex:I

    .line 246
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponHome;->sendNet()V

    .line 247
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponHome;->resourceSet()V

    .line 248
    iget-object v2, p0, Lcom/ub/main/coupon/CouponHome;->failButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setPressed(Z)V

    .line 249
    iget-object v2, p0, Lcom/ub/main/coupon/CouponHome;->failButton:Landroid/widget/Button;

    const v3, 0x7f0200b6

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 250
    iget-object v2, p0, Lcom/ub/main/coupon/CouponHome;->adapter:Lcom/ub/main/coupon/CouponAdapter;

    invoke-virtual {v2, v4}, Lcom/ub/main/coupon/CouponAdapter;->setData(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 237
    .restart local v0       #coupon:Lcom/ub/main/data/Coupon;
    .restart local v1       #i:I
    :cond_5
    iget-object v2, p0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #coupon:Lcom/ub/main/data/Coupon;
    check-cast v0, Lcom/ub/main/data/Coupon;

    .line 238
    .restart local v0       #coupon:Lcom/ub/main/data/Coupon;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/ub/main/data/Coupon;->getSmallIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 239
    invoke-virtual {v0, v4}, Lcom/ub/main/data/Coupon;->setSmallIcon(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :cond_6
    const/4 v0, 0x0

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x7f08006f
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/ub/main/coupon/CouponHome;->setContentView(I)V

    .line 95
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponHome;->initModel()V

    .line 96
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponHome;->initView()V

    .line 97
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponHome;->initControl()V

    .line 98
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 157
    iget-object v2, p0, Lcom/ub/main/coupon/CouponHome;->adapter:Lcom/ub/main/coupon/CouponAdapter;

    invoke-virtual {v2, v3}, Lcom/ub/main/coupon/CouponAdapter;->setData(Ljava/util/ArrayList;)V

    .line 158
    iget-object v2, p0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, coupon:Lcom/ub/main/data/Coupon;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 166
    .end local v0           #coupon:Lcom/ub/main/data/Coupon;
    .end local v1           #i:I
    :cond_0
    iput-object v3, p0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    .line 167
    invoke-static {p0}, Lcom/ub/main/net/ImageLoadingTask2;->clearCacheImage(Landroid/content/Context;)V

    .line 168
    return-void

    .line 161
    .restart local v0       #coupon:Lcom/ub/main/data/Coupon;
    .restart local v1       #i:I
    :cond_1
    iget-object v2, p0, Lcom/ub/main/coupon/CouponHome;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #coupon:Lcom/ub/main/data/Coupon;
    check-cast v0, Lcom/ub/main/data/Coupon;

    .line 160
    .restart local v0       #coupon:Lcom/ub/main/data/Coupon;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 448
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 449
    const/4 v0, 0x0

    .line 451
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 320
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onResume()V

    .line 322
    sget-boolean v0, Lcom/ub/main/coupon/CouponHome;->needUpdate:Z

    if-eqz v0, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponHome;->initModel()V

    .line 324
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponHome;->initView()V

    .line 325
    invoke-direct {p0}, Lcom/ub/main/coupon/CouponHome;->initControl()V

    .line 326
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ub/main/coupon/CouponHome;->needUpdate:Z

    .line 328
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 315
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onStart()V

    .line 316
    return-void
.end method
