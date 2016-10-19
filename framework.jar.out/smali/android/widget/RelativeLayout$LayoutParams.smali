.class public Landroid/widget/RelativeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alignWithParent:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBottom:I

.field private mInitialRules:[I

.field private mIsRtlCompatibilityMode:Z

.field private mLeft:I

.field private mRight:I

.field private mRuleStr:Ljava/lang/String;

.field private mRules:[I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        indexMapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "above"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "alignBaseline"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "alignBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "alignLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xc
                to = "alignParentBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x9
                to = "alignParentLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xb
                to = "alignParentRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa
                to = "alignParentTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "alignRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "alignTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "below"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xe
                to = "centerHorizontal"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xd
                to = "center"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xf
                to = "centerVertical"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "leftOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "rightOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x12
                to = "alignStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x13
                to = "alignEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x14
                to = "alignParentStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x15
                to = "alignParentEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "startOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "endOf"
            .end subannotation
        }
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "true"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "false/NO_ID"
            .end subannotation
        }
        resolveId = true
    .end annotation
.end field

.field private mRulesChanged:Z

.field private mTop:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/16 v2, 0x16

    const/4 v1, 0x0

    .line 1530
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1318
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1347
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1351
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1352
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1354
    const-string v0, ""

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    .line 1531
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1364
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1318
    const/16 v7, 0x16

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1347
    const/16 v7, 0x16

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1351
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1352
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1354
    const-string v7, ""

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    .line 1366
    sget-object v7, Lcom/android/internal/R$styleable;->RelativeLayout_Layout:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1369
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v6, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1370
    .local v6, "targetSdkVersion":I
    const/16 v7, 0x11

    if-lt v6, v7, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1373
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1375
    .local v5, "rules":[I
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1377
    .local v4, "initialRules":[I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 1378
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_c

    .line 1379
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 1380
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    .line 1378
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1370
    .end local v0    # "N":I
    .end local v2    # "attr":I
    .end local v3    # "i":I
    .end local v4    # "initialRules":[I
    .end local v5    # "rules":[I
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 1382
    .restart local v0    # "N":I
    .restart local v2    # "attr":I
    .restart local v3    # "i":I
    .restart local v4    # "initialRules":[I
    .restart local v5    # "rules":[I
    :pswitch_0
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 1383
    iget-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v7, :cond_1

    .line 1384
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AlignWithParent=True, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    goto :goto_2

    .line 1388
    :pswitch_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    .line 1389
    const/4 v7, 0x0

    aget v7, v5, v7

    if-eqz v7, :cond_1

    .line 1390
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", LEFT_OF="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    goto :goto_2

    .line 1394
    :pswitch_2
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    .line 1395
    const/4 v7, 0x1

    aget v7, v5, v7

    if-eqz v7, :cond_1

    .line 1396
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", RIGHT_OF="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    goto/16 :goto_2

    .line 1400
    :pswitch_3
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    .line 1401
    const/4 v7, 0x2

    aget v7, v5, v7

    if-eqz v7, :cond_1

    .line 1402
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ABOVE="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    goto/16 :goto_2

    .line 1406
    :pswitch_4
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    .line 1407
    const/4 v7, 0x3

    aget v7, v5, v7

    if-eqz v7, :cond_1

    .line 1408
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", BELOW="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    goto/16 :goto_2

    .line 1412
    :pswitch_5
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    .line 1413
    const/4 v7, 0x4

    aget v7, v5, v7

    if-eqz v7, :cond_1

    .line 1414
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ALIGN_BASELINE="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    aget v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    goto/16 :goto_2

    .line 1419
    :pswitch_6
    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    .line 1420
    const/4 v7, 0x5

    aget v7, v5, v7

    if-eqz v7, :cond_1

    .line 1421
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ALIGN_LEFT="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    goto/16 :goto_2

    .line 1425
    :pswitch_7
    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    .line 1426
    const/4 v7, 0x6

    aget v7, v5, v7

    if-eqz v7, :cond_1

    .line 1427
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ALIGN_TOP="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x6

    aget v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    goto/16 :goto_2

    .line 1431
    :pswitch_8
    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    .line 1432
    const/4 v7, 0x7

    aget v7, v5, v7

    if-eqz v7, :cond_1

    .line 1433
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ALIGN_RIGHT="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x7

    aget v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    goto/16 :goto_2

    .line 1437
    :pswitch_9
    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    .line 1438
    const/16 v7, 0x8

    aget v7, v5, v7

    if-eqz v7, :cond_1

    .line 1439
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ALIGN_BOTTOM="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x8

    aget v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    goto/16 :goto_2

    .line 1444
    :pswitch_a
    const/16 v8, 0x9

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, -0x1

    :goto_3
    aput v7, v5, v8

    .line 1445
    const/16 v7, 0x9

    aget v7, v5, v7

    if-eqz v7, :cond_1

    .line 1446
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ALIGN_PARENT_LEFT=True"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    goto/16 :goto_2

    .line 1444
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    .line 1450
    :pswitch_b
    const/16 v8, 0xa

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, -0x1

    :goto_4
    aput v7, v5, v8

    .line 1451
    const/16 v7, 0xa

    aget v7, v5, v7

    if-eqz v7, :cond_1

    .line 1452
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ALIGN_PARENT_TOP=True"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    goto/16 :goto_2

    .line 1450
    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    .line 1456
    :pswitch_c
    const/16 v8, 0xb

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, -0x1

    :goto_5
    aput v7, v5, v8

    .line 1457
    const/16 v7, 0xb

    aget v7, v5, v7

    if-eqz v7, :cond_1

    .line 1458
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ALIGN_PARENT_RIGHT=True"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    goto/16 :goto_2

    .line 1456
    :cond_5
    const/4 v7, 0x0

    goto :goto_5

    .line 1462
    :pswitch_d
    const/16 v8, 0xc

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, -0x1

    :goto_6
    aput v7, v5, v8

    .line 1463
    const/16 v7, 0xc

    aget v7, v5, v7

    if-eqz v7, :cond_1

    .line 1464
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ALIGN_PARENT_BOTTOM=True"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    goto/16 :goto_2

    .line 1462
    :cond_6
    const/4 v7, 0x0

    goto :goto_6

    .line 1468
    :pswitch_e
    const/16 v8, 0xd

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, -0x1

    :goto_7
    aput v7, v5, v8

    .line 1469
    const/16 v7, 0xd

    aget v7, v5, v7

    if-eqz v7, :cond_1

    .line 1470
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", CENTER_IN_PARENT=True"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    goto/16 :goto_2

    .line 1468
    :cond_7
    const/4 v7, 0x0

    goto :goto_7

    .line 1474
    :pswitch_f
    const/16 v8, 0xe

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, -0x1

    :goto_8
    aput v7, v5, v8

    .line 1475
    const/16 v7, 0xe

    aget v7, v5, v7

    if-eqz v7, :cond_1

    .line 1476
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", CENTER_HORIZONTAL=True"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    goto/16 :goto_2

    .line 1474
    :cond_8
    const/4 v7, 0x0

    goto :goto_8

    .line 1480
    :pswitch_10
    const/16 v8, 0xf

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, -0x1

    :goto_9
    aput v7, v5, v8

    .line 1481
    const/16 v7, 0xf

    aget v7, v5, v7

    if-eqz v7, :cond_1

    .line 1482
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", CENTER_VERTICAL=True"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    goto/16 :goto_2

    .line 1480
    :cond_9
    const/4 v7, 0x0

    goto :goto_9

    .line 1486
    :pswitch_11
    const/16 v7, 0x10

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    .line 1487
    const/16 v7, 0x10

    aget v7, v5, v7

    if-eqz v7, :cond_1

    .line 1488
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", START_OF="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x10

    aget v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    goto/16 :goto_2

    .line 1492
    :pswitch_12
    const/16 v7, 0x11

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    .line 1493
    const/16 v7, 0x11

    aget v7, v5, v7

    if-eqz v7, :cond_1

    .line 1494
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", END_OF="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x11

    aget v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    goto/16 :goto_2

    .line 1498
    :pswitch_13
    const/16 v7, 0x12

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    .line 1499
    const/16 v7, 0x12

    aget v7, v5, v7

    if-eqz v7, :cond_1

    .line 1500
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ALIGN_START="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x12

    aget v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    goto/16 :goto_2

    .line 1504
    :pswitch_14
    const/16 v7, 0x13

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    .line 1505
    const/16 v7, 0x13

    aget v7, v5, v7

    if-eqz v7, :cond_1

    .line 1506
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ALIGN_END="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x13

    aget v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    goto/16 :goto_2

    .line 1510
    :pswitch_15
    const/16 v8, 0x14

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, -0x1

    :goto_a
    aput v7, v5, v8

    .line 1511
    const/16 v7, 0x14

    aget v7, v5, v7

    if-eqz v7, :cond_1

    .line 1512
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ALIGN_PARENT_START=True"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    goto/16 :goto_2

    .line 1510
    :cond_a
    const/4 v7, 0x0

    goto :goto_a

    .line 1516
    :pswitch_16
    const/16 v8, 0x15

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v7, -0x1

    :goto_b
    aput v7, v5, v8

    .line 1517
    const/16 v7, 0x15

    aget v7, v5, v7

    if-eqz v7, :cond_1

    .line 1518
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ALIGN_PARENT_END=True"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    goto/16 :goto_2

    .line 1516
    :cond_b
    const/4 v7, 0x0

    goto :goto_b

    .line 1523
    .end local v2    # "attr":I
    :cond_c
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1524
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x16

    invoke-static {v5, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1526
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1527
    return-void

    .line 1380
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/16 v2, 0x16

    const/4 v1, 0x0

    .line 1537
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1318
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1347
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1351
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1352
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1354
    const-string v0, ""

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    .line 1538
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 3
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    const/16 v2, 0x16

    const/4 v1, 0x0

    .line 1544
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1318
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1347
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1351
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1352
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1354
    const-string v0, ""

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    .line 1545
    return-void
.end method

.method public constructor <init>(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 4
    .param p1, "source"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    const/16 v3, 0x16

    const/4 v2, 0x0

    .line 1554
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1318
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1347
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1351
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1352
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1354
    const-string v0, ""

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    .line 1556
    iget-boolean v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1557
    iget-boolean v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1558
    iget-boolean v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 1560
    iget-object v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1561
    iget-object v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1563
    return-void
.end method

.method static synthetic access$100(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 1317
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1317
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return p1
.end method

.method static synthetic access$112(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1317
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$120(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1317
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 1317
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1317
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return p1
.end method

.method static synthetic access$212(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1317
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$220(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1317
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 1317
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return v0
.end method

.method static synthetic access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1317
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return p1
.end method

.method static synthetic access$312(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1317
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 1317
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return v0
.end method

.method static synthetic access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1317
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return p1
.end method

.method static synthetic access$412(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1317
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/RelativeLayout$LayoutParams;)[I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 1317
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method private hasRelativeRules()Z
    .locals 2

    .prologue
    .line 1627
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x11

    aget v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x12

    aget v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x13

    aget v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x15

    aget v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resolveRules(I)V
    .locals 9
    .param p1, "layoutDirection"    # I

    .prologue
    const/16 v6, 0x12

    const/16 v8, 0x11

    const/16 v7, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1646
    if-ne p1, v1, :cond_c

    move v0, v1

    .line 1649
    .local v0, "isLayoutRtl":Z
    :goto_0
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x16

    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1652
    iget-boolean v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    if-eqz v3, :cond_d

    .line 1653
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v6

    if-eqz v3, :cond_1

    .line 1654
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    if-nez v3, :cond_0

    .line 1657
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x5

    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v6

    aput v5, v3, v4

    .line 1659
    :cond_0
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v6

    .line 1662
    :cond_1
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    if-eqz v3, :cond_3

    .line 1663
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    if-nez v3, :cond_2

    .line 1666
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x7

    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v6, 0x13

    aget v5, v5, v6

    aput v5, v3, v4

    .line 1668
    :cond_2
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aput v2, v3, v4

    .line 1671
    :cond_3
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v7

    if-eqz v3, :cond_5

    .line 1672
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v2

    if-nez v3, :cond_4

    .line 1675
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v7

    aput v4, v3, v2

    .line 1677
    :cond_4
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v7

    .line 1680
    :cond_5
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v8

    if-eqz v3, :cond_7

    .line 1681
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v1

    if-nez v3, :cond_6

    .line 1684
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v8

    aput v4, v3, v1

    .line 1686
    :cond_6
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v8

    .line 1689
    :cond_7
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x14

    aget v1, v1, v3

    if-eqz v1, :cond_9

    .line 1690
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x9

    aget v1, v1, v3

    if-nez v1, :cond_8

    .line 1693
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x9

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x14

    aget v4, v4, v5

    aput v4, v1, v3

    .line 1695
    :cond_8
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x14

    aput v2, v1, v3

    .line 1698
    :cond_9
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x15

    aget v1, v1, v3

    if-eqz v1, :cond_b

    .line 1699
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0xb

    aget v1, v1, v3

    if-nez v1, :cond_a

    .line 1702
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0xb

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x15

    aget v4, v4, v5

    aput v4, v1, v3

    .line 1704
    :cond_a
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x15

    aput v2, v1, v3

    .line 1759
    :cond_b
    :goto_1
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1760
    return-void

    .end local v0    # "isLayoutRtl":Z
    :cond_c
    move v0, v2

    .line 1646
    goto/16 :goto_0

    .line 1708
    .restart local v0    # "isLayoutRtl":Z
    :cond_d
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v6

    if-nez v3, :cond_e

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    if-eqz v3, :cond_10

    :cond_e
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    if-nez v3, :cond_f

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    if-eqz v3, :cond_10

    .line 1711
    :cond_f
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x5

    aput v2, v3, v4

    .line 1712
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x7

    aput v2, v3, v4

    .line 1714
    :cond_10
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v6

    if-eqz v3, :cond_11

    .line 1716
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_1d

    const/4 v3, 0x7

    :goto_2
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v6

    aput v5, v4, v3

    .line 1717
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v6

    .line 1719
    :cond_11
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    if-eqz v3, :cond_12

    .line 1721
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_1e

    const/4 v3, 0x5

    :goto_3
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v6, 0x13

    aget v5, v5, v6

    aput v5, v4, v3

    .line 1722
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aput v2, v3, v4

    .line 1725
    :cond_12
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v7

    if-nez v3, :cond_13

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v8

    if-eqz v3, :cond_15

    :cond_13
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v2

    if-nez v3, :cond_14

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v1

    if-eqz v3, :cond_15

    .line 1728
    :cond_14
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v2

    .line 1729
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v1

    .line 1731
    :cond_15
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v7

    if-eqz v3, :cond_16

    .line 1733
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_1f

    move v3, v1

    :goto_4
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v7

    aput v5, v4, v3

    .line 1734
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v7

    .line 1736
    :cond_16
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v8

    if-eqz v3, :cond_18

    .line 1738
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_17

    move v1, v2

    :cond_17
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v8

    aput v4, v3, v1

    .line 1739
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v8

    .line 1742
    :cond_18
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x14

    aget v1, v1, v3

    if-nez v1, :cond_19

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x15

    aget v1, v1, v3

    if-eqz v1, :cond_1b

    :cond_19
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x9

    aget v1, v1, v3

    if-nez v1, :cond_1a

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0xb

    aget v1, v1, v3

    if-eqz v1, :cond_1b

    .line 1745
    :cond_1a
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x9

    aput v2, v1, v3

    .line 1746
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0xb

    aput v2, v1, v3

    .line 1748
    :cond_1b
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x14

    aget v1, v1, v3

    if-eqz v1, :cond_1c

    .line 1750
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_20

    const/16 v1, 0xb

    :goto_5
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x14

    aget v4, v4, v5

    aput v4, v3, v1

    .line 1751
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x14

    aput v2, v1, v3

    .line 1753
    :cond_1c
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x15

    aget v1, v1, v3

    if-eqz v1, :cond_b

    .line 1755
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_21

    const/16 v1, 0x9

    :goto_6
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x15

    aget v4, v4, v5

    aput v4, v3, v1

    .line 1756
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x15

    aput v2, v1, v3

    goto/16 :goto_1

    .line 1716
    :cond_1d
    const/4 v3, 0x5

    goto/16 :goto_2

    .line 1721
    :cond_1e
    const/4 v3, 0x7

    goto/16 :goto_3

    :cond_1f
    move v3, v2

    .line 1733
    goto/16 :goto_4

    .line 1750
    :cond_20
    const/16 v1, 0x9

    goto :goto_5

    .line 1755
    :cond_21
    const/16 v1, 0xb

    goto :goto_6
.end method


# virtual methods
.method public addRule(I)V
    .locals 2
    .param p1, "verb"    # I

    .prologue
    const/4 v1, -0x1

    .line 1586
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v0, p1

    .line 1587
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput v1, v0, p1

    .line 1588
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1589
    return-void
.end method

.method public addRule(II)V
    .locals 1
    .param p1, "verb"    # I
    .param p2, "anchor"    # I

    .prologue
    .line 1606
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput p2, v0, p1

    .line 1607
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput p2, v0, p1

    .line 1608
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1609
    return-void
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "output"    # Ljava/lang/String;

    .prologue
    .line 1567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RelativeLayout.LayoutParams={ width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", leftMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rightMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", topMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottomMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRuleStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRules()[I
    .locals 1

    .prologue
    .line 1796
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public getRules(I)[I
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1777
    invoke-direct {p0}, Landroid/widget/RelativeLayout$LayoutParams;->hasRelativeRules()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1779
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveRules(I)V

    .line 1780
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1781
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setLayoutDirection(I)V

    .line 1784
    :cond_1
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public removeRule(I)V
    .locals 2
    .param p1, "verb"    # I

    .prologue
    const/4 v1, 0x0

    .line 1621
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v0, p1

    .line 1622
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput v1, v0, p1

    .line 1623
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1624
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1801
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->isLayoutRtl()Z

    move-result v0

    .line 1802
    .local v0, "isLayoutRtl":Z
    invoke-direct {p0}, Landroid/widget/RelativeLayout$LayoutParams;->hasRelativeRules()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 1803
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveRules(I)V

    .line 1806
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 1807
    return-void
.end method
