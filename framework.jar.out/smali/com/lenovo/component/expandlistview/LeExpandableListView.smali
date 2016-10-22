.class public Lcom/lenovo/component/expandlistview/LeExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "LeExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;,
        Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;,
        Lcom/lenovo/component/expandlistview/LeExpandableListView$OnChildLongClickListener;,
        Lcom/lenovo/component/expandlistview/LeExpandableListView$OnChildClickListener;
    }
.end annotation


# static fields
.field private static final ITEM_CHILD:I = 0x2

.field private static final ITEM_GROUP:I = 0x1

.field public static final STYLE_CHILD_MULTI_LINES:I = 0x1

.field public static final STYLE_CHILD_ONE_LINE:I


# instance fields
.field private expandSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isSingleExpandMode:Z

.field private mContext:Landroid/content/Context;

.field private mExpandListAdapter:Landroid/widget/ExpandableListAdapter;

.field private mInternalExpandListAdapter:Landroid/widget/BaseExpandableListAdapter;

.field private mListAdapter:Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;

.field private mOldExpandGroupIndex:I

.field private mOnChildClickListener:Lcom/lenovo/component/expandlistview/LeExpandableListView$OnChildClickListener;

.field private mOnChildLongClickListener:Lcom/lenovo/component/expandlistview/LeExpandableListView$OnChildLongClickListener;

.field private mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

.field private mStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->isSingleExpandMode:Z

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOldExpandGroupIndex:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mStyle:I

    .line 69
    invoke-direct {p0, p1}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->init(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->isSingleExpandMode:Z

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOldExpandGroupIndex:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mStyle:I

    .line 74
    invoke-direct {p0, p1}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->init(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->isSingleExpandMode:Z

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOldExpandGroupIndex:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mStyle:I

    .line 80
    invoke-direct {p0, p1}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->init(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/expandlistview/LeExpandableListView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->expandSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Landroid/widget/ExpandableListView$OnGroupExpandListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/expandlistview/LeExpandableListView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Landroid/widget/ExpandableListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/expandlistview/LeExpandableListView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mExpandListAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Landroid/widget/ExpandableListView$OnGroupCollapseListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/expandlistview/LeExpandableListView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/expandlistview/LeExpandableListView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/expandlistview/LeExpandableListView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mListAdapter:Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/component/expandlistview/LeExpandableListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/component/expandlistview/LeExpandableListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->animationAtOnce(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/expandlistview/LeExpandableListView;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->isSingleExpandMode:Z

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/component/expandlistview/LeExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/expandlistview/LeExpandableListView;

    .prologue
    .line 44
    iget v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOldExpandGroupIndex:I

    return v0
.end method

.method static synthetic access$702(Lcom/lenovo/component/expandlistview/LeExpandableListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/component/expandlistview/LeExpandableListView;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOldExpandGroupIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Lcom/lenovo/component/expandlistview/LeExpandableListView$OnChildClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/expandlistview/LeExpandableListView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOnChildClickListener:Lcom/lenovo/component/expandlistview/LeExpandableListView$OnChildClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Lcom/lenovo/component/expandlistview/LeExpandableListView$OnChildLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/expandlistview/LeExpandableListView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOnChildLongClickListener:Lcom/lenovo/component/expandlistview/LeExpandableListView$OnChildLongClickListener;

    return-object v0
.end method

.method private animationAtOnce(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isExpanded"    # Z

    .prologue
    .line 338
    if-eqz p2, :cond_0

    .line 339
    iget-object v1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mContext:Landroid/content/Context;

    const v2, 0x9050016

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 343
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    :goto_0
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 344
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 345
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 346
    return-void

    .line 341
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mContext:Landroid/content/Context;

    const v2, 0x9050017

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .restart local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    goto :goto_0
.end method

.method private getGroupPosition(I)I
    .locals 8
    .param p1, "index"    # I

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->getHeaderViewsCount()I

    move-result v6

    sub-int v2, p1, v6

    .line 144
    .local v2, "groupIndex":I
    iget-object v6, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->expandSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 145
    .local v1, "array":[Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 146
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .local v5, "value":Ljava/lang/Object;
    move-object v6, v5

    .line 147
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, v2, :cond_0

    .line 148
    iget v6, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mStyle:I

    if-nez v6, :cond_1

    .line 149
    add-int/lit8 v2, v2, -0x1

    .line 146
    .end local v5    # "value":Ljava/lang/Object;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_1
    iget-object v6, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mExpandListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v6, :cond_0

    .line 152
    iget-object v6, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mExpandListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v5, Ljava/lang/Integer;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v6

    sub-int/2addr v2, v6

    goto :goto_1

    .line 157
    :cond_2
    return v2
.end method

.method private getRealListItemIndex(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->getHeaderViewsCount()I

    move-result v3

    add-int v1, p1, v3

    .line 127
    .local v1, "realIndex":I
    iget-object v3, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->expandSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 128
    .local v2, "value":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, p1, :cond_0

    .line 131
    iget v3, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mStyle:I

    if-nez v3, :cond_1

    .line 132
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 134
    :cond_1
    iget-object v3, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mExpandListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v3, :cond_0

    .line 135
    iget-object v3, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mExpandListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 139
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_2
    return v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 84
    iput-object p1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p0, v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->setChildIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->expandSet:Ljava/util/HashSet;

    .line 90
    new-instance v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/component/expandlistview/LeExpandableListView$1;-><init>(Lcom/lenovo/component/expandlistview/LeExpandableListView;)V

    invoke-super {p0, v0}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 102
    new-instance v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/component/expandlistview/LeExpandableListView$2;-><init>(Lcom/lenovo/component/expandlistview/LeExpandableListView;)V

    invoke-super {p0, v0}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 113
    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mInternalExpandListAdapter:Landroid/widget/BaseExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mInternalExpandListAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 352
    :cond_0
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v8, 0x1

    .line 213
    const v0, 0x9020084

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 214
    .local v7, "itemTyle":I
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    if-eqz v0, :cond_1

    .line 215
    if-ne v7, v8, :cond_2

    .line 216
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    invoke-direct {p0, p2}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->getGroupPosition(I)I

    move-result v3

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    .line 230
    :cond_0
    :goto_0
    return v8

    .line 220
    :cond_1
    if-ne v7, v8, :cond_2

    iget-boolean v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->isSingleExpandMode:Z

    if-eqz v0, :cond_2

    .line 221
    invoke-direct {p0, p2}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->getGroupPosition(I)I

    move-result v6

    .line 222
    .local v6, "groupPosition":I
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ExpandableListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v8

    .line 223
    .local v8, "returnValue":Z
    iget v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOldExpandGroupIndex:I

    if-eq v0, v6, :cond_0

    .line 224
    iget v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOldExpandGroupIndex:I

    invoke-virtual {p0, v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->collapseGroup(I)Z

    .line 225
    iput v6, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOldExpandGroupIndex:I

    goto :goto_0

    .line 230
    .end local v6    # "groupPosition":I
    .end local v8    # "returnValue":Z
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ExpandableListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v8

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 44
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 265
    iget v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mStyle:I

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For LenovoExpandableListView, use setAdapter(LenovoExpandableListAdapter) instead of setAdapter(ExpandableListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    iput-object p1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mExpandListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 271
    new-instance v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;

    invoke-direct {v0, p0}, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;-><init>(Lcom/lenovo/component/expandlistview/LeExpandableListView;)V

    iput-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mInternalExpandListAdapter:Landroid/widget/BaseExpandableListAdapter;

    .line 272
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mInternalExpandListAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-super {p0, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 274
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 252
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For LenovoExpandableListView, use setAdapter(LenovoExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAdapter(Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mListAdapter:Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;

    .line 240
    new-instance v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;

    invoke-direct {v0, p0}, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;-><init>(Lcom/lenovo/component/expandlistview/LeExpandableListView;)V

    iput-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mInternalExpandListAdapter:Landroid/widget/BaseExpandableListAdapter;

    .line 241
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mInternalExpandListAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-super {p0, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 242
    return-void
.end method

.method public setOnChildClick(Lcom/lenovo/component/expandlistview/LeExpandableListView$OnChildClickListener;)V
    .locals 0
    .param p1, "onChildClickListener"    # Lcom/lenovo/component/expandlistview/LeExpandableListView$OnChildClickListener;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOnChildClickListener:Lcom/lenovo/component/expandlistview/LeExpandableListView$OnChildClickListener;

    .line 178
    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .locals 2
    .param p1, "onChildClickListener"    # Landroid/widget/ExpandableListView$OnChildClickListener;

    .prologue
    .line 167
    iget v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 168
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 170
    :cond_0
    return-void
.end method

.method public setOnChildLongClick(Lcom/lenovo/component/expandlistview/LeExpandableListView$OnChildLongClickListener;)V
    .locals 0
    .param p1, "onChildLongClickListener"    # Lcom/lenovo/component/expandlistview/LeExpandableListView$OnChildLongClickListener;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOnChildLongClickListener:Lcom/lenovo/component/expandlistview/LeExpandableListView$OnChildLongClickListener;

    .line 186
    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 0
    .param p1, "onGroupClickListener"    # Landroid/widget/ExpandableListView$OnGroupClickListener;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 193
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 194
    return-void
.end method

.method public setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V
    .locals 0
    .param p1, "onGroupCollapseListener"    # Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    .line 208
    return-void
.end method

.method public setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V
    .locals 0
    .param p1, "onGroupExpandListener"    # Landroid/widget/ExpandableListView$OnGroupExpandListener;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    .line 201
    return-void
.end method

.method public setSingleExpandMode(Z)V
    .locals 0
    .param p1, "isSingleExpandMode"    # Z

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->isSingleExpandMode:Z

    .line 286
    return-void
.end method

.method public setStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 119
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    iput p1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView;->mStyle:I

    goto :goto_0
.end method
