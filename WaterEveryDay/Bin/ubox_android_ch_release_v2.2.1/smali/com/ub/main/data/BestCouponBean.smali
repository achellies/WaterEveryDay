.class public Lcom/ub/main/data/BestCouponBean;
.super Ljava/lang/Object;
.source "BestCouponBean.java"


# static fields
.field public static data_count:Ljava/lang/String;


# instance fields
.field private couponList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/data/Coupon;",
            ">;"
        }
    .end annotation
.end field

.field private promotion:Lcom/ub/main/data/Promotion;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getData_count()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/ub/main/data/BestCouponBean;->data_count:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addCoupon(Lcom/ub/main/data/Coupon;)V
    .locals 1
    .parameter "coupon"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ub/main/data/BestCouponBean;->couponList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/data/BestCouponBean;->couponList:Ljava/util/ArrayList;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/ub/main/data/BestCouponBean;->couponList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public clearCoupons()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ub/main/data/BestCouponBean;->couponList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/ub/main/data/BestCouponBean;->couponList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 28
    :cond_0
    return-void
.end method

.method public getCouponList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/data/Coupon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ub/main/data/BestCouponBean;->couponList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPromotion()Lcom/ub/main/data/Promotion;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ub/main/data/BestCouponBean;->promotion:Lcom/ub/main/data/Promotion;

    return-object v0
.end method

.method public setData_count(Ljava/lang/String;)V
    .locals 0
    .parameter "data_count"

    .prologue
    .line 45
    sput-object p1, Lcom/ub/main/data/BestCouponBean;->data_count:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setPromotion(Lcom/ub/main/data/Promotion;)V
    .locals 0
    .parameter "promotion"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ub/main/data/BestCouponBean;->promotion:Lcom/ub/main/data/Promotion;

    .line 60
    return-void
.end method
