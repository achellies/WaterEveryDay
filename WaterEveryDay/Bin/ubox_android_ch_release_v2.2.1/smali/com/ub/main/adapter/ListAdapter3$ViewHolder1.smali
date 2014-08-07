.class public Lcom/ub/main/adapter/ListAdapter3$ViewHolder1;
.super Ljava/lang/Object;
.source "ListAdapter3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/adapter/ListAdapter3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder1"
.end annotation


# instance fields
.field public img:Landroid/widget/ImageView;

.field public info:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/ub/main/adapter/ListAdapter3;

.field public time:Landroid/widget/TextView;

.field public time_name:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/ub/main/adapter/ListAdapter3;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/ub/main/adapter/ListAdapter3$ViewHolder1;->this$0:Lcom/ub/main/adapter/ListAdapter3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
