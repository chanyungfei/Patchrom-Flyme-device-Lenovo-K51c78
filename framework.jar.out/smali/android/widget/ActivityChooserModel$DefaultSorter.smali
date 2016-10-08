.class final Landroid/widget/ActivityChooserModel$DefaultSorter;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Landroid/widget/ActivityChooserModel$ActivitySorter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultSorter"
.end annotation


# static fields
.field private static final WEIGHT_DECAY_COEFFICIENT:F = 0.95f


# instance fields
.field private final mPackageNameToActivityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserModel;)V
    .locals 1

    .prologue
    .line 976
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 979
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/ActivityChooserModel;
    .param p2, "x1"    # Landroid/widget/ActivityChooserModel$1;

    .prologue
    .line 976
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel$DefaultSorter;-><init>(Landroid/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$HistoricalRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 984
    .local p2, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    .local p3, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    .line 986
    .local v6, "componentNameToActivityMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 988
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    .line 989
    .local v3, "activityCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_0

    .line 990
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 991
    .local v2, "activity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    const/4 v14, 0x0

    iput v14, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 992
    new-instance v5, Landroid/content/ComponentName;

    iget-object v14, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    .local v5, "componentName":Landroid/content/ComponentName;
    invoke-interface {v6, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 998
    .end local v2    # "activity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v9, v14, -0x1

    .line 999
    .local v9, "lastShareIndex":I
    const/high16 v10, 0x3f800000    # 1.0f

    .line 1000
    .local v10, "nextRecordWeight":F
    move v8, v9

    :goto_1
    if-ltz v8, :cond_2

    .line 1001
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 1002
    .local v7, "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    iget-object v5, v7, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    .line 1003
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 1004
    .restart local v2    # "activity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    if-eqz v2, :cond_1

    .line 1005
    iget v14, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v15, v7, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    mul-float/2addr v15, v10

    add-float/2addr v14, v15

    iput v14, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 1006
    const v14, 0x3f733333    # 0.95f

    mul-float/2addr v10, v14

    .line 1000
    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 1010
    .end local v2    # "activity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    :cond_2
    invoke-static/range {p2 .. p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ActivityChooserModel$DefaultSorter;->this$0:Landroid/widget/ActivityChooserModel;

    # getter for: Landroid/widget/ActivityChooserModel;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;
    invoke-static {v14}, Landroid/widget/ActivityChooserModel;->access$300(Landroid/widget/ActivityChooserModel;)Lcom/mediatek/common/media/IRCSePriorityExt;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 1014
    # getter for: Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$400()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Inside mRCSePriorityExt: Entry "

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const/4 v13, -0x1

    .line 1016
    .local v13, "rcseIndex":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    .local v11, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v3, :cond_3

    .line 1018
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 1019
    .local v1, "actResolveInfo":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    iget-object v14, v1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1021
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v14, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1023
    .end local v1    # "actResolveInfo":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v4    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ActivityChooserModel$DefaultSorter;->this$0:Landroid/widget/ActivityChooserModel;

    # getter for: Landroid/widget/ActivityChooserModel;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;
    invoke-static {v14}, Landroid/widget/ActivityChooserModel;->access$300(Landroid/widget/ActivityChooserModel;)Lcom/mediatek/common/media/IRCSePriorityExt;

    move-result-object v14

    invoke-interface {v14, v11}, Lcom/mediatek/common/media/IRCSePriorityExt;->sortTheListForRCSe(Ljava/util/ArrayList;)I

    move-result v13

    .line 1024
    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    .line 1025
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 1027
    .local v12, "rcseActResolveInfo":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1028
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1030
    .end local v12    # "rcseActResolveInfo":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    :cond_4
    # getter for: Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$400()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Inside mRCSePriorityExt: Exit with Index "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    .end local v11    # "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "rcseIndex":I
    :cond_5
    return-void
.end method
