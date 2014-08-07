.class public Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FoodCouponListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/foodsale/FoodCouponListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public count:Landroid/widget/TextView;

.field public image:Landroid/widget/ImageView;

.field public info:Landroid/widget/TextView;

.field public money:Landroid/widget/TextView;

.field public name:Landroid/widget/TextView;

.field public selectimage:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/ub/main/foodsale/FoodCouponListAdapter;


# direct methods
.method public constructor <init>(Lcom/ub/main/foodsale/FoodCouponListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodCouponListAdapter$ViewHolder;->this$0:Lcom/ub/main/foodsale/FoodCouponListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
