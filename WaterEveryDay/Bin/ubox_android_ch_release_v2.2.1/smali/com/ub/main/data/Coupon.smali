.class public Lcom/ub/main/data/Coupon;
.super Ljava/lang/Object;
.source "Coupon.java"


# instance fields
.field private bestprice:Ljava/lang/String;

.field private brief:Ljava/lang/String;

.field private can_use:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private coupon_sn:Ljava/lang/String;

.field private created:Ljava/lang/String;

.field private cut_amount:Ljava/lang/String;

.field private discount:Ljava/lang/String;

.field private discount_type_id:Ljava/lang/String;

.field private discount_type_name:Ljava/lang/String;

.field private exclude_thirdparty_id:Ljava/lang/String;

.field private expire_time:Ljava/lang/String;

.field private gift_user_id:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isNewCoupon:Z

.field private modified:Ljava/lang/String;

.field private newprice:Ljava/lang/String;

.field private oldprice:Ljava/lang/String;

.field private seller_id:Ljava/lang/String;

.field private smallIcon:Landroid/graphics/drawable/Drawable;

.field private status:Ljava/lang/String;

.field private thirdparty_id:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private use_limit_price:Ljava/lang/String;

.field private use_nums:Ljava/lang/String;

.field private use_nums_limit:Ljava/lang/String;

.field private user_id:Ljava/lang/String;

.field private user_rank:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->modified:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->status:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->newprice:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->id:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->discount_type_id:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->discount_type_name:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->seller_id:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->thirdparty_id:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->exclude_thirdparty_id:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->expire_time:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->use_nums_limit:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->use_nums:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->gift_user_id:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->user_id:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->user_rank:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->use_limit_price:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->cut_amount:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->discount:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->channel:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->title:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->brief:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->icon:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->can_use:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->coupon_sn:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->created:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->oldprice:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Coupon;->bestprice:Ljava/lang/String;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ub/main/data/Coupon;->isNewCoupon:Z

    .line 7
    return-void
.end method


# virtual methods
.method public getBestprice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->bestprice:Ljava/lang/String;

    return-object v0
.end method

.method public getBrief()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->brief:Ljava/lang/String;

    return-object v0
.end method

.method public getCan_use()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->can_use:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getCoupon_sn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->coupon_sn:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->created:Ljava/lang/String;

    return-object v0
.end method

.method public getCut_amount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->cut_amount:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->discount:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscount_type_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->discount_type_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscount_type_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->discount_type_name:Ljava/lang/String;

    return-object v0
.end method

.method public getExclude_thirdparty_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->exclude_thirdparty_id:Ljava/lang/String;

    return-object v0
.end method

.method public getExpire_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->expire_time:Ljava/lang/String;

    return-object v0
.end method

.method public getGift_user_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->gift_user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getModified()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->modified:Ljava/lang/String;

    return-object v0
.end method

.method public getNewprice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->newprice:Ljava/lang/String;

    return-object v0
.end method

.method public getOldprice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->oldprice:Ljava/lang/String;

    return-object v0
.end method

.method public getSeller_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->seller_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->smallIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdparty_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->thirdparty_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUse_limit_price()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->use_limit_price:Ljava/lang/String;

    return-object v0
.end method

.method public getUse_nums()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->use_nums:Ljava/lang/String;

    return-object v0
.end method

.method public getUse_nums_limit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->use_nums_limit:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_rank()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/ub/main/data/Coupon;->user_rank:Ljava/lang/String;

    return-object v0
.end method

.method public isNewCoupon()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/ub/main/data/Coupon;->isNewCoupon:Z

    return v0
.end method

.method public setBestprice(Ljava/lang/String;)V
    .locals 0
    .parameter "bestprice"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->bestprice:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setBrief(Ljava/lang/String;)V
    .locals 0
    .parameter "brief"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->brief:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setCan_use(Ljava/lang/String;)V
    .locals 0
    .parameter "can_use"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->can_use:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setChannel_id(Ljava/lang/String;)V
    .locals 0
    .parameter "channel"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->channel:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setCoupon_sn(Ljava/lang/String;)V
    .locals 0
    .parameter "coupon_sn"

    .prologue
    .line 329
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->coupon_sn:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setCreated(Ljava/lang/String;)V
    .locals 0
    .parameter "created"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->created:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public setCut_amount(Ljava/lang/String;)V
    .locals 0
    .parameter "cut_amount"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->cut_amount:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setDiscount(Ljava/lang/String;)V
    .locals 0
    .parameter "discount"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->discount:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setDiscount_type_id(Ljava/lang/String;)V
    .locals 0
    .parameter "discount_type_id"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->discount_type_id:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setDiscount_type_name(Ljava/lang/String;)V
    .locals 0
    .parameter "discount_type_name"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->discount_type_name:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setExclude_thirdparty_id(Ljava/lang/String;)V
    .locals 0
    .parameter "exclude_thirdparty_id"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->exclude_thirdparty_id:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setExpire_time(Ljava/lang/String;)V
    .locals 0
    .parameter "expire_time"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->expire_time:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setGift_user_id(Ljava/lang/String;)V
    .locals 0
    .parameter "gift_user_id"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->gift_user_id:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->icon:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->id:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setModified(Ljava/lang/String;)V
    .locals 0
    .parameter "modified"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->modified:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public setNewCoupon(Z)V
    .locals 0
    .parameter "isNewCoupon"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/ub/main/data/Coupon;->isNewCoupon:Z

    .line 83
    return-void
.end method

.method public setNewprice(Ljava/lang/String;)V
    .locals 0
    .parameter "newprice"

    .prologue
    .line 407
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->newprice:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public setOldprice(Ljava/lang/String;)V
    .locals 0
    .parameter "oldprice"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->oldprice:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setSeller_id(Ljava/lang/String;)V
    .locals 0
    .parameter "seller_id"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->seller_id:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setSmallIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "smallIcon"

    .prologue
    .line 374
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->smallIcon:Landroid/graphics/drawable/Drawable;

    .line 375
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->status:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public setThirdparty_id(Ljava/lang/String;)V
    .locals 0
    .parameter "thirdparty_id"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->thirdparty_id:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->title:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setUse_limit_price(Ljava/lang/String;)V
    .locals 0
    .parameter "use_limit_price"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->use_limit_price:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setUse_nums(Ljava/lang/String;)V
    .locals 0
    .parameter "use_nums"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->use_nums:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setUse_nums_limit(Ljava/lang/String;)V
    .locals 0
    .parameter "use_nums_limit"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->use_nums_limit:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0
    .parameter "user_id"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->user_id:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setUser_rank(Ljava/lang/String;)V
    .locals 0
    .parameter "user_rank"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/ub/main/data/Coupon;->user_rank:Ljava/lang/String;

    .line 222
    return-void
.end method
