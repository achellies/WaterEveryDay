.class public Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FoodPromotionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/foodsale/FoodPromotionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public discount:Landroid/widget/TextView;

.field public image:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field public range:Landroid/widget/TextView;

.field public selectimage:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/ub/main/foodsale/FoodPromotionListAdapter;

.field public time:Landroid/widget/TextView;

.field public timeRange:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/ub/main/foodsale/FoodPromotionListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->this$0:Lcom/ub/main/foodsale/FoodPromotionListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
