.class public Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;
.super Ljava/lang/Object;
.source "CinemaExpandListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/movie/CinemaExpandListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder_Cinema"
.end annotation


# instance fields
.field public Cinema_arrow:Landroid/widget/ImageView;

.field public Cinema_distance:Landroid/widget/TextView;

.field public Cinema_name:Landroid/widget/TextView;

.field public Cinema_value:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/ub/main/movie/CinemaExpandListViewAdapter;


# direct methods
.method public constructor <init>(Lcom/ub/main/movie/CinemaExpandListViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;->this$0:Lcom/ub/main/movie/CinemaExpandListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
