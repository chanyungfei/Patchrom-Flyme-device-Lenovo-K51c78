.class Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;
.super Ljava/lang/Object;
.source "LeExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChildViewHolder"
.end annotation


# instance fields
.field childCount:I

.field childIconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field childList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field childTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;->this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
