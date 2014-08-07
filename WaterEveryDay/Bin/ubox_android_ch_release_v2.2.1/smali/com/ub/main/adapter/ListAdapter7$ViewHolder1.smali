.class public Lcom/ub/main/adapter/ListAdapter7$ViewHolder1;
.super Ljava/lang/Object;
.source "ListAdapter7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/adapter/ListAdapter7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder1"
.end annotation


# instance fields
.field public money:Landroid/widget/TextView;

.field public name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/ub/main/adapter/ListAdapter7;

.field public time:Landroid/widget/TextView;

.field public type:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/ub/main/adapter/ListAdapter7;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/ub/main/adapter/ListAdapter7$ViewHolder1;->this$0:Lcom/ub/main/adapter/ListAdapter7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
