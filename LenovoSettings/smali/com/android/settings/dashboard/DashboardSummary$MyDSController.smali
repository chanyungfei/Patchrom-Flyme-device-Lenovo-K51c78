.class Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$MyDSController;
.super Lcom/lenovo/settings/dslv/DragSortController;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDSController"
.end annotation


# instance fields
.field mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;


# direct methods
.method public constructor <init>(Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;Lcom/lenovo/settings/dslv/DragSortListView;)V
    .locals 3
    .param p2, "dslv"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$MyDSController;->this$0:Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;

    .line 1131
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/lenovo/settings/dslv/DragSortController;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;III)V

    .line 1133
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$MyDSController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    .line 1134
    return-void
.end method


# virtual methods
.method public startDragPosition(Landroid/view/MotionEvent;)I
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, -0x1

    .line 1138
    invoke-super {p0, p1}, Lcom/lenovo/settings/dslv/DragSortController;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1139
    .local v2, "position":I
    const-string v5, "DashboardSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[startDragPosition] position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    if-gez v2, :cond_1

    move v2, v4

    .line 1160
    .end local v2    # "position":I
    :cond_0
    :goto_0
    return v2

    .line 1146
    .restart local v2    # "position":I
    :cond_1
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$MyDSController;->this$0:Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;->mAdapter:Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;->access$500(Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;)Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 1147
    .local v1, "item":Landroid/preference/PreferenceActivity$Header;
    if-eqz v1, :cond_2

    .line 1148
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v0

    .line 1150
    .local v0, "headerType":I
    if-nez v0, :cond_2

    move v2, v4

    .line 1151
    goto :goto_0

    .line 1155
    .end local v0    # "headerType":I
    :cond_2
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$MyDSController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v5}, Lcom/lenovo/settings/dslv/DragSortListView;->getWidth()I

    move-result v3

    .line 1157
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    if-lt v5, v3, :cond_0

    move v2, v4

    .line 1160
    goto :goto_0
.end method