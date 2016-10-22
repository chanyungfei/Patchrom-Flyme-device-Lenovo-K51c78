.class public Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DashboardSummary.java"

# interfaces
.implements Lcom/lenovo/settings/LenovoStatusStateChangeListener;
.implements Lcom/lenovo/settings/dslv/DragSortListView$DropListener;
.implements Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;",
        "Lcom/lenovo/settings/LenovoStatusStateChangeListener;",
        "Lcom/lenovo/settings/dslv/DragSortListView$DropListener;",
        "Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;"
    }
.end annotation


# static fields
.field static final HEADER_TYPE_CATEGORY:I = 0x0

.field private static final HEADER_TYPE_COUNT:I = 0x4

.field static final HEADER_TYPE_NORMAL:I = 0x1

.field static final HEADER_TYPE_PLUGIN:I = 0x4

.field static final HEADER_TYPE_STATUS:I = 0x3

.field static final HEADER_TYPE_SWITCH:I = 0x2

.field private static final MSG_UPDATE_SIM_STATE:I = 0x10


# instance fields
.field private mAirPlaneDependency:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothStatusEnabler;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsAirPlaneMode:Z

.field private mIsHeaderIndexChanged:Z

.field private mIsSimInserted:Z

.field private mIsSimNotAvailable:Z

.field private mOPen4GEnabler:Lcom/lenovo/settings/Open4GEnabler;

.field private final mWifiEnabler:Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "authenticatorHelper"    # Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v2, 0x0

    .line 538
    invoke-direct {p0, p1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 484
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsAirPlaneMode:Z

    .line 485
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsSimInserted:Z

    .line 486
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsSimNotAvailable:Z

    .line 492
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsHeaderIndexChanged:Z

    .line 494
    new-instance v1, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$1;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$1;-><init>(Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mHandler:Landroid/os/Handler;

    .line 540
    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mAuthHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    .line 541
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 547
    new-instance v1, Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;

    invoke-direct {v1, p1}, Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mWifiEnabler:Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;

    .line 548
    new-instance v1, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothStatusEnabler;

    invoke-direct {v1, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothStatusEnabler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mBluetoothEnabler:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothStatusEnabler;

    .line 560
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mAirPlaneDependency:Ljava/util/HashMap;

    .line 561
    const-string v1, "toggle_airplane"

    invoke-static {v1}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getPluginDependencyByKey(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 563
    .local v0, "airPlaneDep":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    .line 564
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mAirPlaneDependency:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 569
    :cond_0
    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->updateAirPlaneMode(Z)V

    .line 570
    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->updateSimStatus(Z)V

    .line 571
    return-void
.end method

.method private checkSplitBar(II)V
    .locals 11
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v10, 0x1

    .line 1042
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 1044
    .local v3, "item":Landroid/preference/PreferenceActivity$Header;
    if-nez v3, :cond_0

    .line 1122
    :goto_0
    return-void

    .line 1048
    :cond_0
    const-string v7, "DashboardSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[checkSplitBar] drop header from: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    invoke-static {}, Lcom/lenovo/settings/LPSReaper;->trackHeaderSortChanged()V

    .line 1053
    const/4 v4, 0x0

    .line 1054
    .local v4, "previous":Landroid/preference/PreferenceActivity$Header;
    const/4 v5, -0x1

    .line 1055
    .local v5, "previousHeaderIdx":I
    const/4 v6, -0x1

    .line 1056
    .local v6, "previousHeaderType":I
    if-lez p1, :cond_1

    .line 1057
    add-int/lit8 v5, p1, -0x1

    .line 1058
    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "previous":Landroid/preference/PreferenceActivity$Header;
    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    .line 1059
    .restart local v4    # "previous":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v4}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v6

    .line 1061
    const-string v7, "DashboardSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[checkSplitBar] previousHeaderIdx: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", previousHeaderType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    :cond_1
    if-nez v5, :cond_2

    if-nez v6, :cond_2

    if-nez p2, :cond_2

    .line 1069
    const-string v7, "DashboardSummary"

    const-string v8, "[checkSplitBar] can not move normal header to index[0], cause index[0] should always be HEADER_TYPE_CATEGORY"

    invoke-static {v7, v8}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1074
    :cond_2
    const/4 v0, 0x0

    .line 1075
    .local v0, "following":Landroid/preference/PreferenceActivity$Header;
    const/4 v1, -0x1

    .line 1076
    .local v1, "followingHeaderIdx":I
    const/4 v2, -0x1

    .line 1077
    .local v2, "followingHeaderType":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge p1, v7, :cond_3

    .line 1078
    add-int/lit8 v1, p1, 0x1

    .line 1079
    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "following":Landroid/preference/PreferenceActivity$Header;
    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1080
    .restart local v0    # "following":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v2

    .line 1082
    const-string v7, "DashboardSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[checkSplitBar] followingHeaderIdx: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", followingHeaderType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->setNotifyOnChange(Z)V

    .line 1089
    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->remove(Ljava/lang/Object;)V

    .line 1090
    invoke-virtual {p0, v3, p2}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->insert(Ljava/lang/Object;I)V

    .line 1091
    iput-boolean v10, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsHeaderIndexChanged:Z

    .line 1093
    if-nez v4, :cond_4

    if-nez v2, :cond_4

    .line 1095
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->remove(Ljava/lang/Object;)V

    .line 1096
    const-string v7, "DashboardSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[checkSplitBar] remove following category: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cause the category now is the first item"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    :cond_4
    if-nez v6, :cond_5

    if-nez v0, :cond_5

    .line 1101
    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->remove(Ljava/lang/Object;)V

    .line 1102
    const-string v7, "DashboardSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[checkSplitBar] remove previous category: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cause the category now is the last item"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    :cond_5
    if-nez v6, :cond_6

    if-nez v2, :cond_6

    .line 1108
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->remove(Ljava/lang/Object;)V

    .line 1109
    const-string v7, "DashboardSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[checkSplitBar] remove following category: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cause the previous and following item are both category, should remove one"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    :cond_6
    invoke-virtual {p0, v10}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->setNotifyOnChange(Z)V

    .line 1117
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->notifyDataSetChanged()V

    .line 1120
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/settings/DashboardSortUtil;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/DashboardSortUtil;

    move-result-object v7

    iget-object v8, v3, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, p2}, Lcom/lenovo/settings/DashboardSortUtil;->updateHeaderIndex(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 4
    .param p0, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 523
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0022

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 524
    const/4 v0, 0x4

    .line 532
    :goto_0
    return v0

    .line 525
    :cond_0
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0247

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 526
    const/4 v0, 0x2

    goto :goto_0

    .line 527
    :cond_1
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0246

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0248

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 528
    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 529
    :cond_3
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_4

    .line 530
    const/4 v0, 0x0

    goto :goto_0

    .line 532
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 825
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 827
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 828
    check-cast v1, Landroid/view/ViewGroup;

    .line 829
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 830
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 829
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 833
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setHeaderIcon(Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "holder"    # Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 909
    iget-object v1, p1, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 910
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 912
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 913
    iget-object v1, p1, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 914
    iget-object v1, p1, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 915
    return-void
.end method

.method private updateAirPlaneMode(Z)V
    .locals 6
    .param p1, "notifyData"    # Z

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 852
    .local v0, "tmpEnabled":Z
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsAirPlaneMode:Z

    if-eq v1, v0, :cond_1

    .line 853
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsAirPlaneMode:Z

    .line 854
    if-eqz v0, :cond_2

    .line 855
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsSimNotAvailable:Z

    .line 861
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 862
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->notifyDataSetChanged()V

    .line 865
    :cond_1
    return-void

    .line 857
    :cond_2
    if-eqz p1, :cond_0

    .line 858
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;)V
    .locals 7
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "holder"    # Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 755
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_6

    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 757
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, "accType":Ljava/lang/String;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mAuthHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mAuthHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 760
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-direct {p0, p2, v1}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->setHeaderIcon(Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V

    .line 764
    .end local v0    # "accType":Ljava/lang/String;
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 765
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    :cond_0
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 768
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 769
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 770
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 771
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :cond_1
    :goto_2
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_a

    .line 778
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v4, "enable"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_8

    .line 779
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 780
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 782
    :cond_2
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 783
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 785
    :cond_3
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 786
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->status:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 787
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 807
    :cond_4
    :goto_3
    return-void

    .line 758
    .restart local v0    # "accType":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 762
    .end local v0    # "accType":Ljava/lang/String;
    :cond_6
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v4, p1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 773
    .restart local v2    # "summary":Ljava/lang/CharSequence;
    :cond_7
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 790
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :cond_8
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    .line 791
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 793
    :cond_9
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 794
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3

    .line 798
    :cond_a
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 799
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 800
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3
.end method

.method private updatePluginHeaderView(Landroid/view/View;Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;Landroid/preference/PreferenceActivity$Header;)Landroid/view/View;
    .locals 4
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "holder"    # Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;
    .param p3, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 810
    iget-object v2, p3, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "key":Ljava/lang/String;
    move-object v1, p1

    .line 813
    .local v1, "view":Landroid/view/View;
    iget-object v2, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v3, p3, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 814
    iget-object v2, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    if-eqz v1, :cond_0

    .line 818
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->isPluginItemEnabled(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 821
    :cond_0
    return-object v1
.end method

.method private updateSimStatus(Z)V
    .locals 10
    .param p1, "notifyData"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x5

    .line 872
    const/4 v0, 0x0

    .line 873
    .local v0, "simNotAvailable":Z
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v5

    .line 874
    .local v5, "telephonyPlugin":Lcom/lenovo/settings/manager/TelephonyPlugin;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v6

    if-lez v6, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsSimInserted:Z

    .line 876
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsSimInserted:Z

    if-nez v6, :cond_3

    .line 877
    :cond_0
    const/4 v0, 0x1

    .line 900
    :goto_1
    iget-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsSimNotAvailable:Z

    if-eq v6, v0, :cond_1

    .line 901
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsSimNotAvailable:Z

    .line 902
    if-eqz p1, :cond_1

    .line 903
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->notifyDataSetChanged()V

    .line 906
    :cond_1
    return-void

    :cond_2
    move v6, v8

    .line 874
    goto :goto_0

    .line 879
    :cond_3
    invoke-virtual {v5}, Lcom/lenovo/settings/manager/TelephonyPlugin;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 880
    invoke-virtual {v5, v8}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getSimState(I)I

    move-result v2

    .line 881
    .local v2, "simState0":I
    invoke-virtual {v5, v7}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getSimState(I)I

    move-result v3

    .line 882
    .local v3, "simState1":I
    if-eq v2, v9, :cond_4

    if-eq v3, v9, :cond_4

    .line 884
    const/4 v0, 0x1

    goto :goto_1

    .line 886
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 889
    .end local v2    # "simState0":I
    .end local v3    # "simState1":I
    :cond_5
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 891
    .local v4, "teleManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 892
    .local v1, "simState":I
    if-eq v1, v9, :cond_6

    .line 893
    const/4 v0, 0x1

    goto :goto_1

    .line 895
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public drop(II)V
    .locals 0
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 974
    if-eq p1, p2, :cond_0

    .line 991
    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->checkSplitBar(II)V

    .line 993
    :cond_0
    return-void
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 575
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v0

    .line 576
    .local v0, "headerType":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 577
    const/4 v0, 0x1

    .line 579
    .end local v0    # "headerType":I
    :cond_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 606
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 607
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    .line 608
    .local v1, "headerType":I
    const/4 v5, 0x0

    .line 613
    .local v5, "view":Landroid/view/View;
    if-nez p2, :cond_1

    .line 614
    new-instance v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$1;)V

    .line 615
    .local v2, "holder":Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;
    packed-switch v1, :pswitch_data_0

    .line 668
    :goto_0
    if-eqz v5, :cond_0

    .line 669
    invoke-virtual {v5, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 677
    :cond_0
    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 746
    :goto_2
    :pswitch_0
    return-object v5

    .line 636
    :pswitch_1
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f04007c

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 639
    goto :goto_0

    .line 642
    :pswitch_2
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040084

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 643
    const v6, 0x7f0b000e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 644
    const v6, 0x7f0b000f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 646
    const v6, 0x7f0b00a5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto :goto_0

    .line 651
    :pswitch_3
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040082

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 652
    const v6, 0x7f0b000e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 653
    const v6, 0x7f0b000f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 658
    :pswitch_4
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040083

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 659
    const v6, 0x7f0b000e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 660
    const v6, 0x7f0b000f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 662
    const v6, 0x7f0b00dc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->status:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 672
    .end local v2    # "holder":Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;
    :cond_1
    move-object v5, p2

    .line 673
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;

    .restart local v2    # "holder":Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 687
    :pswitch_5
    invoke-direct {p0, v5, v2, v0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->updatePluginHeaderView(Landroid/view/View;Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;Landroid/preference/PreferenceActivity$Header;)Landroid/view/View;

    goto/16 :goto_2

    .line 702
    :pswitch_6
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b0247

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 703
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mOPen4GEnabler:Lcom/lenovo/settings/Open4GEnabler;

    if-eqz v6, :cond_2

    .line 704
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mOPen4GEnabler:Lcom/lenovo/settings/Open4GEnabler;

    iget-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/lenovo/settings/Open4GEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 708
    :cond_2
    iget-object v6, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setVisibility(I)V

    .line 709
    invoke-direct {p0, v0, v2}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;)V

    .line 710
    iget-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsAirPlaneMode:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsSimInserted:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsSimNotAvailable:Z

    if-nez v6, :cond_3

    const/4 v3, 0x1

    .line 711
    .local v3, "shouldEnable":Z
    :goto_3
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b0247

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 712
    invoke-direct {p0, v5, v3}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->setEnabledStateOnViews(Landroid/view/View;Z)V

    goto/16 :goto_2

    .line 710
    .end local v3    # "shouldEnable":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 715
    .restart local v3    # "shouldEnable":Z
    :cond_4
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->setEnabledStateOnViews(Landroid/view/View;Z)V

    goto/16 :goto_2

    .line 720
    .end local v3    # "shouldEnable":Z
    :pswitch_7
    invoke-direct {p0, v0, v2}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 724
    :pswitch_8
    const/4 v4, 0x0

    .line 725
    .local v4, "status":Ljava/lang/String;
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b0246

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 726
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mWifiEnabler:Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;

    invoke-virtual {v6}, Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;->getRunningState()Ljava/lang/String;

    move-result-object v4

    .line 732
    :goto_4
    iget-object v6, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    iget-object v6, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->status:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 735
    invoke-direct {p0, v0, v2}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 727
    :cond_5
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b0248

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 728
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mBluetoothEnabler:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothStatusEnabler;

    invoke-virtual {v6}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothStatusEnabler;->getRunningState()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 730
    :cond_6
    const-string v6, "DashboardSummary"

    const-string v7, "getView HEADER_TYPE_STATUS, no."

    invoke-static {v6, v7}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 615
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 677
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 590
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHeaderIndexChanged()Z
    .locals 1

    .prologue
    .line 969
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsHeaderIndexChanged:Z

    return v0
.end method

.method public isPluginItemEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 836
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mAirPlaneDependency:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 837
    const-string v2, "mobile_network_settings"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 838
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsAirPlaneMode:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsSimInserted:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsSimNotAvailable:Z

    if-nez v2, :cond_1

    .line 843
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 838
    goto :goto_0

    .line 840
    :cond_2
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsAirPlaneMode:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsSimInserted:Z

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public onStateChange(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->notifyDataSetChanged()V

    .line 752
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 947
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mWifiEnabler:Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;->pause()V

    .line 948
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mWifiEnabler:Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;->setOnStatusStateChangedListener(Lcom/lenovo/settings/LenovoStatusStateChangeListener;)V

    .line 952
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mBluetoothEnabler:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothStatusEnabler;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothStatusEnabler;->pause()V

    .line 953
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mBluetoothEnabler:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothStatusEnabler;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothStatusEnabler;->setOnStatusStateChangedListener(Lcom/lenovo/settings/LenovoStatusStateChangeListener;)V

    .line 963
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mOPen4GEnabler:Lcom/lenovo/settings/Open4GEnabler;

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mOPen4GEnabler:Lcom/lenovo/settings/Open4GEnabler;

    invoke-virtual {v0}, Lcom/lenovo/settings/Open4GEnabler;->pause()V

    .line 966
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mWifiEnabler:Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;->resume()V

    .line 926
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mWifiEnabler:Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;->setOnStatusStateChangedListener(Lcom/lenovo/settings/LenovoStatusStateChangeListener;)V

    .line 930
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mBluetoothEnabler:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothStatusEnabler;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothStatusEnabler;->resume()V

    .line 931
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mBluetoothEnabler:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothStatusEnabler;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothStatusEnabler;->setOnStatusStateChangedListener(Lcom/lenovo/settings/LenovoStatusStateChangeListener;)V

    .line 941
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mOPen4GEnabler:Lcom/lenovo/settings/Open4GEnabler;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mOPen4GEnabler:Lcom/lenovo/settings/Open4GEnabler;

    invoke-virtual {v0}, Lcom/lenovo/settings/Open4GEnabler;->resume()V

    .line 944
    :cond_0
    return-void
.end method

.method public updateAirPlaneMode()V
    .locals 1

    .prologue
    .line 847
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->updateAirPlaneMode(Z)V

    .line 848
    return-void
.end method

.method public updateData(II)V
    .locals 10
    .param p1, "pos"    # I
    .param p2, "flag"    # I

    .prologue
    .line 997
    const-string v7, "DashboardSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[updateData] pos: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    if-gez p1, :cond_0

    .line 1038
    :goto_0
    return-void

    .line 1002
    :cond_0
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 1003
    .local v4, "newItem":Landroid/preference/PreferenceActivity$Header;
    const-string v7, "section"

    iput-object v7, v4, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 1005
    const/4 v0, 0x0

    .line 1006
    .local v0, "current":Landroid/preference/PreferenceActivity$Header;
    const/4 v1, -0x1

    .line 1007
    .local v1, "currentHeaderType":I
    if-lez p1, :cond_1

    .line 1008
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "current":Landroid/preference/PreferenceActivity$Header;
    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1009
    .restart local v0    # "current":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    .line 1012
    :cond_1
    const/4 v5, 0x0

    .line 1013
    .local v5, "previous":Landroid/preference/PreferenceActivity$Header;
    const/4 v6, -0x1

    .line 1014
    .local v6, "previousHeaderType":I
    if-lez p1, :cond_2

    .line 1015
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "previous":Landroid/preference/PreferenceActivity$Header;
    check-cast v5, Landroid/preference/PreferenceActivity$Header;

    .line 1016
    .restart local v5    # "previous":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v6

    .line 1019
    :cond_2
    const/4 v2, 0x0

    .line 1020
    .local v2, "following":Landroid/preference/PreferenceActivity$Header;
    const/4 v3, -0x1

    .line 1021
    .local v3, "followingHeaderType":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge p1, v7, :cond_3

    .line 1022
    add-int/lit8 v7, p1, 0x1

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "following":Landroid/preference/PreferenceActivity$Header;
    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    .line 1023
    .restart local v2    # "following":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v3

    .line 1026
    :cond_3
    const-string v7, "DashboardSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[updateData] previousHeaderType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " currentHeaderType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " followingHeaderType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    if-eqz v1, :cond_4

    if-nez v6, :cond_5

    .line 1032
    :cond_4
    const-string v7, "DashboardSummary"

    const-string v8, "no need to add data"

    invoke-static {v7, v8}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1034
    :cond_5
    const-string v7, "DashboardSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add data to position: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p0, v4, p1}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->insert(Ljava/lang/Object;I)V

    .line 1036
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsHeaderIndexChanged:Z

    goto/16 :goto_0
.end method

.method public updateSimStatus()V
    .locals 1

    .prologue
    .line 868
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->updateSimStatus(Z)V

    .line 869
    return-void
.end method
