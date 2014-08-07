.class public Lcom/ub/main/adapter/ListAdapter4$ViewHolder1;
.super Ljava/lang/Object;
.source "ListAdapter4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/adapter/ListAdapter4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder1"
.end annotation


# instance fields
.field public img:Landroid/widget/ImageView;

.field public info:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/ub/main/adapter/ListAdapter4;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/ub/main/adapter/ListAdapter4;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/ub/main/adapter/ListAdapter4$ViewHolder1;->this$0:Lcom/ub/main/adapter/ListAdapter4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
