.class public Lcom/ub/main/data/Promotion;
.super Ljava/lang/Object;
.source "Promotion.java"


# instance fields
.field private brief:Ljava/lang/String;

.field private can_use:Ljava/lang/String;

.field private created:Ljava/lang/String;

.field private cut_amount:Ljava/lang/String;

.field private discount:Ljava/lang/String;

.field private discount_type_id:Ljava/lang/String;

.field private discount_type_name:Ljava/lang/String;

.field private end_time:Ljava/lang/String;

.field private exclude_thirdpatry_id:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private seller_id:Ljava/lang/String;

.field private start_time:Ljava/lang/String;

.field private thirdparty_id:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private use_limit_price:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Promotion;->id:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Promotion;->title:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Promotion;->brief:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Promotion;->icon:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Promotion;->seller_id:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Promotion;->start_time:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Promotion;->end_time:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Promotion;->thirdparty_id:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Promotion;->exclude_thirdpatry_id:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Promotion;->can_use:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Promotion;->discount_type_id:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Promotion;->discount_type_name:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Promotion;->use_limit_price:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Promotion;->cut_amount:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Promotion;->discount:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/Promotion;->created:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public getBrief()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ub/main/data/Promotion;->brief:Ljava/lang/String;

    return-object v0
.end method

.method public getCan_use()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/ub/main/data/Promotion;->can_use:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/ub/main/data/Promotion;->created:Ljava/lang/String;

    return-object v0
.end method

.method public getCut_amount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/ub/main/data/Promotion;->cut_amount:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/ub/main/data/Promotion;->discount:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscount_type_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/ub/main/data/Promotion;->discount_type_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscount_type_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ub/main/data/Promotion;->discount_type_name:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ub/main/data/Promotion;->end_time:Ljava/lang/String;

    return-object v0
.end method

.method public getExclude_thirdpatry_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/ub/main/data/Promotion;->exclude_thirdpatry_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ub/main/data/Promotion;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ub/main/data/Promotion;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSeller_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ub/main/data/Promotion;->seller_id:Ljava/lang/String;

    return-object v0
.end method

.method public getStart_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ub/main/data/Promotion;->start_time:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdparty_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/ub/main/data/Promotion;->thirdparty_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ub/main/data/Promotion;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUse_limit_price()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/ub/main/data/Promotion;->use_limit_price:Ljava/lang/String;

    return-object v0
.end method

.method public setBrief(Ljava/lang/String;)V
    .locals 0
    .parameter "brief"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/ub/main/data/Promotion;->brief:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setCan_use(Ljava/lang/String;)V
    .locals 0
    .parameter "can_use"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/ub/main/data/Promotion;->can_use:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setCreated(Ljava/lang/String;)V
    .locals 0
    .parameter "created"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/ub/main/data/Promotion;->created:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setCut_amount(Ljava/lang/String;)V
    .locals 0
    .parameter "cut_amount"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/ub/main/data/Promotion;->cut_amount:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setDiscount(Ljava/lang/String;)V
    .locals 0
    .parameter "discount"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/ub/main/data/Promotion;->discount:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setDiscount_type_id(Ljava/lang/String;)V
    .locals 0
    .parameter "discount_type_id"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/ub/main/data/Promotion;->discount_type_id:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setDiscount_type_name(Ljava/lang/String;)V
    .locals 0
    .parameter "discount_type_name"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/ub/main/data/Promotion;->discount_type_name:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setEnd_time(Ljava/lang/String;)V
    .locals 0
    .parameter "end_time"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/ub/main/data/Promotion;->end_time:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setExclude_thirdpatry_id(Ljava/lang/String;)V
    .locals 0
    .parameter "exclude_thirdpatry_id"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/ub/main/data/Promotion;->exclude_thirdpatry_id:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/ub/main/data/Promotion;->icon:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/ub/main/data/Promotion;->id:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setSeller_id(Ljava/lang/String;)V
    .locals 0
    .parameter "seller_id"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/ub/main/data/Promotion;->seller_id:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setStart_time(Ljava/lang/String;)V
    .locals 0
    .parameter "start_time"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/ub/main/data/Promotion;->start_time:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setThirdparty_id(Ljava/lang/String;)V
    .locals 0
    .parameter "thirdparty_id"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/ub/main/data/Promotion;->thirdparty_id:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ub/main/data/Promotion;->title:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setUse_limit_price(Ljava/lang/String;)V
    .locals 0
    .parameter "use_limit_price"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/ub/main/data/Promotion;->use_limit_price:Ljava/lang/String;

    .line 188
    return-void
.end method
