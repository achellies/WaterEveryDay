.class public Lcom/ub/main/adapter/UPlusCouponListAdapter$UPlusViewHolder;
.super Ljava/lang/Object;
.source "UPlusCouponListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/adapter/UPlusCouponListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UPlusViewHolder"
.end annotation


# instance fields
.field public couponName:Landroid/widget/TextView;

.field public image:Landroid/widget/ImageView;

.field public selectImage:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/ub/main/adapter/UPlusCouponListAdapter;


# direct methods
.method public constructor <init>(Lcom/ub/main/adapter/UPlusCouponListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter$UPlusViewHolder;->this$0:Lcom/ub/main/adapter/UPlusCouponListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
