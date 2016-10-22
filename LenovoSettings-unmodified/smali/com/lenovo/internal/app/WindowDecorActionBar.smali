.class public Lcom/lenovo/internal/app/WindowDecorActionBar;
.super Llenovo/app/ActionBar;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;,
        Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;,
        Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ALLOW_SHOW_HIDE_ANIMATIONS:Z

.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WindowDecorActionBar"


# instance fields
.field mActionMode:Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

.field private mActivity:Landroid/app/Activity;

.field private final mChildIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

.field private mContentAnimations:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

.field private mCurWindowVisibility:I

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field private mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

.field mDeferredDestroyActionMode:Llenovo/view/ActionMode;

.field mDeferredModeDestroyCallback:Llenovo/view/ActionMode$Callback;

.field private mDisplayHomeAsUpSet:Z

.field private mHasEmbeddedTabs:Z

.field mHasEmbeddedTabsSup:Z

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field final mHideListener:Landroid/animation/Animator$AnimatorListener;

.field mHideOnContentScroll:Z

.field mIsActionMode:Z

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

.field private mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowingForMode:Z

.field private mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

.field mTabListener:Landroid/app/ActionBar$TabListener;

.field private mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

.field private mThemedContext:Landroid/content/Context;

.field final mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field mViewPager:Llenovo/view/ViewPager;

.field mWindowNoTitle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    const-class v0, Lcom/lenovo/internal/app/WindowDecorActionBar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/lenovo/internal/app/WindowDecorActionBar;->$assertionsDisabled:Z

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/lenovo/internal/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    return-void

    :cond_0
    move v0, v2

    .line 89
    goto :goto_0

    :cond_1
    move v1, v2

    .line 96
    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "overlayMode"    # Z

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;ZZ)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "overlayMode"    # Z
    .param p3, "hasEmbededTabsSup"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    invoke-direct {p0}, Llenovo/app/ActionBar;-><init>()V

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 113
    const/4 v2, -0x1

    iput v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 136
    iput v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 138
    iput-boolean v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 143
    iput-boolean v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 148
    iput-boolean v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabsSup:Z

    .line 149
    iput-boolean v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mWindowNoTitle:Z

    .line 150
    iput-boolean v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mIsActionMode:Z

    .line 152
    new-instance v2, Lcom/lenovo/internal/app/WindowDecorActionBar$1;

    invoke-direct {v2, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$1;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 180
    new-instance v2, Lcom/lenovo/internal/app/WindowDecorActionBar$2;

    invoke-direct {v2, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$2;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 188
    new-instance v2, Lcom/lenovo/internal/app/WindowDecorActionBar$3;

    invoke-direct {v2, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$3;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1564
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;

    .line 1825
    new-instance v2, Lcom/lenovo/internal/app/WindowDecorActionBar$4;

    invoke-direct {v2, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$4;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    .line 1857
    new-instance v2, Lcom/lenovo/internal/app/WindowDecorActionBar$5;

    invoke-direct {v2, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$5;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabListener:Landroid/app/ActionBar$TabListener;

    .line 202
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    .line 203
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 204
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 205
    .local v0, "decor":Landroid/view/View;
    iput-boolean p3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabsSup:Z

    .line 206
    invoke-direct {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 207
    if-nez p2, :cond_0

    .line 208
    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    .line 210
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 212
    invoke-direct {p0}, Llenovo/app/ActionBar;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 136
    iput v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 138
    iput-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 143
    iput-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 148
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabsSup:Z

    .line 149
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mWindowNoTitle:Z

    .line 150
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mIsActionMode:Z

    .line 152
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$1;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 180
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$2;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 188
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$3;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;

    .line 1825
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$4;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$4;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    .line 1857
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$5;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$5;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabListener:Landroid/app/ActionBar$TabListener;

    .line 213
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 214
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 220
    invoke-direct {p0}, Llenovo/app/ActionBar;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 136
    iput v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 138
    iput-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 143
    iput-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 148
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabsSup:Z

    .line 149
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mWindowNoTitle:Z

    .line 150
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mIsActionMode:Z

    .line 152
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$1;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 180
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$2;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 188
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$3;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;

    .line 1825
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$4;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$4;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    .line 1857
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$5;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$5;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabListener:Landroid/app/ActionBar$TabListener;

    .line 221
    sget-boolean v0, Lcom/lenovo/internal/app/WindowDecorActionBar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 222
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 223
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/internal/app/WindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/internal/app/WindowDecorActionBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/DecorToolbar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/internal/app/WindowDecorActionBar;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/internal/app/WindowDecorActionBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 89
    iget v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    return v0
.end method

.method static synthetic access$502(Lcom/lenovo/internal/app/WindowDecorActionBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarOverlayLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/internal/app/WindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    return v0
.end method

.method static synthetic access$800(Lcom/lenovo/internal/app/WindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    return v0
.end method

.method static synthetic access$900(ZZZ)Z
    .locals 1
    .param p0, "x0"    # Z
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 89
    invoke-static {p0, p1, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    return v0
.end method

.method private static checkShowingFlags(ZZZ)Z
    .locals 1
    .param p0, "hiddenByApp"    # Z
    .param p1, "hiddenBySystem"    # Z
    .param p2, "showingForMode"    # Z

    .prologue
    const/4 v0, 0x1

    .line 871
    if-eqz p2, :cond_1

    .line 876
    :cond_0
    :goto_0
    return v0

    .line 873
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 874
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanupTabs()V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v0, :cond_0

    .line 523
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 526
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 529
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 530
    return-void
.end method

.method private configureTab(Landroid/app/ActionBar$Tab;I)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 642
    move-object v3, p1

    check-cast v3, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .line 643
    .local v3, "tabi":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    invoke-virtual {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    .line 645
    .local v0, "callback":Landroid/app/ActionBar$TabListener;
    if-nez v0, :cond_0

    .line 646
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Action Bar Tab must have a Callback"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 649
    :cond_0
    invoke-virtual {v3, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 650
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 652
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 653
    .local v1, "count":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 654
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 653
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 656
    :cond_1
    return-void
.end method

.method private configureTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "hasOptionMenu"    # Z

    .prologue
    .line 1931
    move-object v3, p1

    check-cast v3, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .line 1932
    .local v3, "tabi":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    invoke-virtual {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    .line 1934
    .local v0, "callback":Landroid/app/ActionBar$TabListener;
    if-nez v0, :cond_0

    .line 1935
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Action Bar Tab must have a Callback"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1938
    :cond_0
    invoke-virtual {v3, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 1939
    const/4 v4, 0x1

    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasSetOptionMenu:Z
    invoke-static {v3, v4}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1702(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Z)Z

    .line 1940
    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasOptionMenu:Z
    invoke-static {v3, p3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1802(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Z)Z

    .line 1942
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1944
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1945
    .local v1, "count":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1946
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 1945
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1948
    :cond_1
    return-void
.end method

.method private ensureTabsExist()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 366
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 394
    :goto_0
    return-void

    .line 370
    :cond_0
    new-instance v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 372
    .local v0, "tabScroller":Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    iget-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-eqz v1, :cond_1

    .line 373
    invoke-virtual {v0, v3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 374
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v1, v0}, Lcom/lenovo/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V

    .line 391
    :goto_1
    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    .line 393
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    iget-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setHasEmbeddedTabs(Z)V

    goto :goto_0

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 377
    invoke-virtual {v0, v3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 378
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2

    .line 384
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Lcom/lenovo/internal/widget/ViewUtils;->requestApplyInsets(Landroid/view/View;)V

    .line 389
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTabContainer(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V

    goto :goto_1

    .line 387
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/lenovo/internal/widget/DecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 285
    instance-of v0, p1, Lcom/lenovo/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    .line 286
    check-cast p1, Lcom/lenovo/internal/widget/DecorToolbar;

    .line 288
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 287
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Llenovo/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 288
    check-cast p1, Llenovo/widget/Toolbar;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Llenovo/widget/Toolbar;->getWrapper()Lcom/lenovo/internal/widget/DecorToolbar;

    move-result-object p1

    goto :goto_0

    .line 290
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hideForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 824
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    if-eqz v0, :cond_1

    .line 825
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 826
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 829
    :cond_0
    invoke-direct {p0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 831
    :cond_1
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 13
    .param p1, "decor"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 226
    const v8, 0x7f0b0008

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    iput-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    .line 227
    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v8, :cond_0

    .line 228
    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v8, p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    .line 230
    :cond_0
    const v8, 0x7f0b0016

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getDecorToolbar(Landroid/view/View;)Lcom/lenovo/internal/widget/DecorToolbar;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    .line 231
    const v8, 0x7f0b000b

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lenovo/internal/widget/ActionBarContextView;

    iput-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    .line 233
    const v8, 0x7f0b0017

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lenovo/internal/widget/ActionBarContainer;

    iput-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    .line 236
    const v8, 0x7f0b0003

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lenovo/internal/widget/ActionBarContainer;

    iput-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    .line 237
    const v8, 0x7f0b0013

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 238
    .local v7, "view":Landroid/view/View;
    instance-of v8, v7, Llenovo/view/ViewPager;

    if-eqz v8, :cond_1

    check-cast v7, Llenovo/view/ViewPager;

    .end local v7    # "view":Landroid/view/View;
    iput-object v7, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    .line 240
    :cond_1
    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-nez v8, :cond_3

    .line 241
    :cond_2
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " can only be used "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "with a compatible window decor layout"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 245
    :cond_3
    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v8}, Lcom/lenovo/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    .line 246
    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    sget-object v11, Lcom/lenovo/component/appcompat/R$styleable;->Theme:[I

    invoke-virtual {v8, v11}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 247
    .local v2, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mWindowNoTitle:Z

    .line 248
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 253
    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v8}, Lcom/lenovo/internal/widget/DecorToolbar;->isSplitWhenNarrow()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f070005

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_8

    move v5, v9

    .line 255
    .local v5, "hasShowSplit":Z
    :goto_0
    if-eqz v5, :cond_9

    move v8, v9

    :goto_1
    iput v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    .line 260
    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v8}, Lcom/lenovo/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v3

    .line 261
    .local v3, "current":I
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_a

    move v6, v9

    .line 262
    .local v6, "homeAsUp":Z
    :goto_2
    if-eqz v6, :cond_4

    .line 263
    iput-boolean v9, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 266
    :cond_4
    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/lenovo/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/lenovo/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 267
    .local v1, "abp":Lcom/lenovo/internal/view/ActionBarPolicy;
    invoke-virtual {v1}, Lcom/lenovo/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v6, :cond_b

    :cond_5
    move v8, v9

    :goto_3
    invoke-virtual {p0, v8}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setHomeButtonEnabled(Z)V

    .line 269
    invoke-virtual {v1}, Lcom/lenovo/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-boolean v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabsSup:Z

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mWindowNoTitle:Z

    if-eqz v8, :cond_c

    :cond_6
    :goto_4
    invoke-direct {p0, v9}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 271
    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    sget-object v11, Lcom/lenovo/component/appcompat/R$styleable;->ActionBar:[I

    const v12, 0x10102ce

    invoke-virtual {v8, v9, v11, v12, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 277
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08001b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 278
    .local v4, "elevation":I
    if-eqz v4, :cond_7

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_7

    .line 279
    int-to-float v8, v4

    invoke-virtual {p0, v8}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setElevation(F)V

    .line 281
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 282
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "abp":Lcom/lenovo/internal/view/ActionBarPolicy;
    .end local v3    # "current":I
    .end local v4    # "elevation":I
    .end local v5    # "hasShowSplit":Z
    .end local v6    # "homeAsUp":Z
    :cond_8
    move v5, v10

    .line 253
    goto :goto_0

    .restart local v5    # "hasShowSplit":Z
    :cond_9
    move v8, v10

    .line 255
    goto :goto_1

    .restart local v3    # "current":I
    :cond_a
    move v6, v10

    .line 261
    goto :goto_2

    .restart local v1    # "abp":Lcom/lenovo/internal/view/ActionBarPolicy;
    .restart local v6    # "homeAsUp":Z
    :cond_b
    move v8, v10

    .line 267
    goto :goto_3

    :cond_c
    move v9, v10

    .line 269
    goto :goto_4
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 5
    .param p1, "hasEmbeddedTabs"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 336
    iput-boolean p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    .line 338
    iget-boolean v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_1

    .line 339
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v3, v4}, Lcom/lenovo/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V

    .line 340
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v4}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTabContainer(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V

    .line 345
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 346
    .local v0, "isInTabMode":Z
    :goto_1
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v3}, Lcom/lenovo/internal/widget/DecorToolbar;->isInExpanded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 347
    if-eqz v0, :cond_3

    .line 348
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 349
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 355
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-static {v3}, Lcom/lenovo/internal/widget/ViewUtils;->requestApplyInsets(Landroid/view/View;)V

    .line 361
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    iget-boolean v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    move v3, v1

    :goto_3
    invoke-interface {v4, v3}, Lcom/lenovo/internal/widget/DecorToolbar;->setCollapsible(Z)V

    .line 362
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    iget-boolean v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {v3, v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 363
    return-void

    .line 342
    .end local v0    # "isInTabMode":Z
    :cond_1
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v4}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTabContainer(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V

    .line 343
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-interface {v3, v4}, Lcom/lenovo/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 345
    goto :goto_1

    .line 358
    .restart local v0    # "isInTabMode":Z
    :cond_3
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v2

    .line 361
    goto :goto_3

    :cond_5
    move v1, v2

    .line 362
    goto :goto_4
.end method

.method private showForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 796
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    if-nez v0, :cond_1

    .line 797
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 798
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 801
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 803
    :cond_1
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 4
    .param p1, "fromSystem"    # Z

    .prologue
    .line 882
    iget-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    iget-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    iget-boolean v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    invoke-static {v1, v2, v3}, Lcom/lenovo/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    .line 884
    .local v0, "shown":Z
    if-eqz v0, :cond_1

    .line 885
    iget-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-nez v1, :cond_0

    .line 886
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 887
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->doShow(Z)V

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    iget-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_0

    .line 891
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 892
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->doHide(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addFragmentTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "hasOptionMenu"    # Z

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lenovo/internal/app/WindowDecorActionBar;->addFragmentTab(Landroid/app/ActionBar$Tab;IZZ)V

    .line 1902
    return-void
.end method

.method public addFragmentTab(Landroid/app/ActionBar$Tab;IZZ)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z
    .param p4, "hasOptionMenu"    # Z

    .prologue
    .line 1919
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 1920
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 1921
    invoke-direct {p0, p1, p2, p4}, Lcom/lenovo/internal/app/WindowDecorActionBar;->configureTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 1922
    if-eqz p3, :cond_0

    .line 1923
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1925
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    if-eqz v0, :cond_1

    .line 1926
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->notifyDataSetChanged()V

    .line 1927
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llenovo/view/ViewPager;->setUpdateMenuWhenScroller(Z)V

    .line 1928
    return-void
.end method

.method public addFragmentTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "hasOptionMenu"    # Z

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar;->addFragmentTab(Landroid/app/ActionBar$Tab;ZZ)V

    .line 1897
    return-void
.end method

.method public addFragmentTab(Landroid/app/ActionBar$Tab;ZZ)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z
    .param p3, "hasOptionMenu"    # Z

    .prologue
    .line 1906
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 1907
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 1908
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/lenovo/internal/app/WindowDecorActionBar;->configureTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 1909
    if-eqz p2, :cond_0

    .line 1910
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1912
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    if-eqz v0, :cond_1

    .line 1913
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->notifyDataSetChanged()V

    .line 1914
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llenovo/view/ViewPager;->setUpdateMenuWhenScroller(Z)V

    .line 1915
    return-void
.end method

.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 660
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 661
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 665
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 666
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 682
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 683
    invoke-direct {p0, p1, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar;->configureTab(Landroid/app/ActionBar$Tab;I)V

    .line 684
    if-eqz p3, :cond_0

    .line 685
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->notifyDataSetChanged()V

    .line 688
    :cond_1
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 671
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 672
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->configureTab(Landroid/app/ActionBar$Tab;I)V

    .line 673
    if-eqz p2, :cond_0

    .line 674
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->notifyDataSetChanged()V

    .line 677
    :cond_1
    return-void
.end method

.method public animateToMode(Z)V
    .locals 4
    .param p1, "toActionMode"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1019
    if-eqz p1, :cond_0

    .line 1020
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->showForActionMode()V

    .line 1025
    :goto_0
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Lcom/lenovo/internal/widget/DecorToolbar;->animateToVisibility(I)V

    .line 1026
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/lenovo/internal/widget/ActionBarContextView;->animateToVisibility(I)V

    .line 1028
    return-void

    .line 1022
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->hideForActionMode()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1025
    goto :goto_1

    :cond_2
    move v2, v1

    .line 1026
    goto :goto_2
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->collapseActionView()V

    .line 1087
    const/4 v0, 0x1

    .line 1089
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method completeDeferredDestroyActionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 397
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Llenovo/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Llenovo/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Llenovo/view/ActionMode;

    invoke-interface {v0, v1}, Llenovo/view/ActionMode$Callback;->onDestroyActionMode(Llenovo/view/ActionMode;)V

    .line 399
    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Llenovo/view/ActionMode;

    .line 400
    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Llenovo/view/ActionMode$Callback;

    .line 402
    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 446
    iget-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    if-ne p1, v2, :cond_1

    .line 455
    :cond_0
    return-void

    .line 449
    :cond_1
    iput-boolean p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    .line 451
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 452
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 453
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Landroid/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public doHide(Z)V
    .locals 12
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v8, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 970
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v5, :cond_0

    .line 971
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    .line 974
    :cond_0
    iget v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v5, :cond_5

    sget-boolean v5, Lcom/lenovo/internal/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_1

    if-eqz p1, :cond_5

    .line 976
    :cond_1
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v11}, Lcom/lenovo/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 977
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 978
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 979
    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/lenovo/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v3, v5

    .line 980
    .local v3, "endingY":F
    if-eqz p1, :cond_2

    .line 981
    new-array v4, v8, [I

    fill-array-data v4, :array_0

    .line 982
    .local v4, "topLeft":[I
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v4}, Lcom/lenovo/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 983
    aget v5, v4, v9

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 985
    .end local v4    # "topLeft":[I
    :cond_2
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v9, [F

    aput v3, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 986
    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 987
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 988
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 989
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v8, [F

    const/4 v8, 0x0

    aput v8, v7, v10

    aput v3, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 992
    :cond_3
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/lenovo/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 993
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v11}, Lcom/lenovo/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 994
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v9, [F

    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v8}, Lcom/lenovo/internal/widget/ActionBarContainer;->getHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 997
    :cond_4
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const v6, 0x10a0005

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 999
    const-wide/16 v6, 0xfa

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1000
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1001
    iput-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 1002
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1006
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "endingY":F
    :goto_0
    return-void

    .line 1004
    :cond_5
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 981
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public doShow(Z)V
    .locals 12
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v11, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 898
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v5, :cond_0

    .line 899
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    .line 901
    :cond_0
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/lenovo/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 903
    iget v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v5, :cond_6

    sget-boolean v5, Lcom/lenovo/internal/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_1

    if-eqz p1, :cond_6

    .line 906
    :cond_1
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 907
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/lenovo/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v3, v5

    .line 908
    .local v3, "startingY":F
    if-eqz p1, :cond_2

    .line 909
    new-array v4, v11, [I

    fill-array-data v4, :array_0

    .line 910
    .local v4, "topLeft":[I
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v4}, Lcom/lenovo/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 911
    aget v5, v4, v10

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 913
    .end local v4    # "topLeft":[I
    :cond_2
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v3}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 914
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 915
    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 916
    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 917
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 918
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 919
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v11, [F

    aput v3, v7, v9

    aput v8, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 923
    :cond_3
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    if-ne v5, v10, :cond_4

    .line 926
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    iget-object v6, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v6}, Lcom/lenovo/internal/widget/ActionBarContainer;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 927
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/lenovo/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 928
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 930
    :cond_4
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const v6, 0x10a0006

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 932
    const-wide/16 v6, 0xfa

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 940
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 941
    iput-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 942
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 959
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "startingY":F
    :goto_0
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v5, :cond_5

    .line 960
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-static {v5}, Lcom/lenovo/internal/widget/ViewUtils;->requestApplyInsets(Landroid/view/View;)V

    .line 967
    :cond_5
    return-void

    .line 944
    :cond_6
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v6}, Lcom/lenovo/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 945
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 946
    iget-boolean v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_7

    .line 947
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 950
    :cond_7
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_8

    iget v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    if-ne v5, v10, :cond_8

    .line 953
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v6}, Lcom/lenovo/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 954
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 955
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/lenovo/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 957
    :cond_8
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 909
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public enableContentAnimations(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 781
    iput-boolean p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 782
    return-void
.end method

.method public finishActionMode()V
    .locals 1

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActionMode:Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    if-eqz v0, :cond_0

    .line 1952
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActionMode:Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->finish()V

    .line 1954
    :cond_0
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getElevation()F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHideOffset()I
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1451
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1447
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 1449
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getDropdownItemCount()I

    move-result v0

    goto :goto_0

    .line 1445
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1433
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/lenovo/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1439
    :cond_0
    :goto_0
    return v0

    .line 1435
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v0

    goto :goto_0

    .line 1437
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getDropdownSelectedPosition()I

    move-result v0

    goto :goto_0

    .line 1433
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabFragmentAt(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getItemAt(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 5

    .prologue
    .line 1031
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 1032
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1033
    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1034
    .local v0, "currentTheme":Landroid/content/res/Resources$Theme;
    const v3, 0x1010397

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1035
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 1037
    .local v2, "targetThemeRes":I
    if-eqz v2, :cond_1

    .line 1038
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    .line 1043
    .end local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "targetThemeRes":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    return-object v3

    .line 1040
    .restart local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    .restart local v2    # "targetThemeRes":I
    :cond_1
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 814
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-nez v0, :cond_0

    .line 815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    .line 816
    invoke-direct {p0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 817
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setShow(Z)V

    .line 821
    :cond_0
    return-void
.end method

.method public hideForSystem()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 834
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-nez v0, :cond_0

    .line 835
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 836
    invoke-direct {p0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 838
    :cond_0
    return-void
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->isHideOnContentScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1009
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getHeight()I

    move-result v0

    .line 1011
    .local v0, "height":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    .line 1012
    iget-boolean v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getHideOffset()I

    move-result v3

    if-ge v3, v0, :cond_1

    .line 1014
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 1012
    goto :goto_0

    .line 1014
    :cond_2
    iget-boolean v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->isTitleTruncated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockFragment(Z)V
    .locals 1
    .param p1, "lock"    # Z

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    if-eqz v0, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v0, p1}, Llenovo/view/ViewPager;->setLockViewPager(Z)V

    .line 1519
    :cond_0
    return-void
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 693
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    if-eqz v1, :cond_0

    .line 694
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    .line 695
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 699
    .end local v0    # "tab":Landroid/app/ActionBar$Tab;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    goto :goto_0
.end method

.method public newTab(Landroid/os/Bundle;)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1875
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    if-eqz v1, :cond_0

    .line 1876
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    .line 1877
    .local v0, "tab":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->bundle:Landroid/os/Bundle;
    invoke-static {v0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$2002(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1878
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 1881
    .end local v0    # "tab":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 309
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/lenovo/internal/view/ActionBarPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabsSup:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mWindowNoTitle:Z

    if-eqz v2, :cond_2

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {p0, v2}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 310
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorToolbar;->isSplitWhenNarrow()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070005

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v3

    .line 312
    .local v0, "hasShowSplit":Z
    :goto_1
    if-eqz v0, :cond_4

    move v2, v3

    :goto_2
    iput v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    .line 315
    iget-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mIsActionMode:Z

    if-eqz v2, :cond_5

    .line 316
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v4}, Lcom/lenovo/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 332
    :cond_1
    :goto_3
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v2, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->onActivityOrientationChange(Landroid/content/res/Configuration;)V

    .line 333
    return-void

    .end local v0    # "hasShowSplit":Z
    :cond_2
    move v2, v4

    .line 309
    goto :goto_0

    :cond_3
    move v0, v4

    .line 310
    goto :goto_1

    .restart local v0    # "hasShowSplit":Z
    :cond_4
    move v2, v4

    .line 312
    goto :goto_2

    .line 319
    :cond_5
    iget v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v2, :cond_1

    .line 320
    iget-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    iget-boolean v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    iget-boolean v6, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    invoke-static {v2, v5, v6}, Lcom/lenovo/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v1

    .line 322
    .local v1, "shown":Z
    if-eqz v1, :cond_6

    .line 323
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    if-ne v2, v3, :cond_1

    .line 324
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v4}, Lcom/lenovo/internal/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_3

    .line 327
    :cond_6
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 328
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lenovo/internal/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_3
.end method

.method public onContentScrollStarted()V
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1075
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 1077
    :cond_0
    return-void
.end method

.method public onContentScrollStopped()V
    .locals 0

    .prologue
    .line 1081
    return-void
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 423
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    .line 430
    :cond_0
    :goto_0
    return v1

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->openOptionsMenu()Z

    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 405
    iput p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 406
    return-void
.end method

.method public openOptionsMenu()Z
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public removeAllTabs()V
    .locals 0

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->cleanupTabs()V

    .line 519
    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 443
    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 704
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->removeTabAt(I)V

    .line 705
    return-void
.end method

.method public removeTabAt(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 709
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-nez v4, :cond_1

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v3

    .line 716
    .local v3, "selectedTabPosition":I
    :goto_1
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v4, p1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 717
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .line 718
    .local v2, "removedTab":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    if-eqz v2, :cond_2

    .line 719
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 722
    :cond_2
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 723
    .local v1, "newTabCount":I
    move v0, p1

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 724
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 714
    .end local v0    # "i":I
    .end local v1    # "newTabCount":I
    .end local v2    # "removedTab":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    .end local v3    # "selectedTabPosition":I
    :cond_3
    iget v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    goto :goto_1

    .line 727
    .restart local v0    # "i":I
    .restart local v1    # "newTabCount":I
    .restart local v2    # "removedTab":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    .restart local v3    # "selectedTabPosition":I
    :cond_4
    if-ne v3, p1, :cond_0

    .line 728
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p0, v4}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    const/4 v5, 0x0

    add-int/lit8 v6, p1, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    goto :goto_3
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 5
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    const/4 v2, -0x1

    .line 734
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 735
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    :cond_0
    iput v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 768
    :cond_1
    :goto_0
    return-void

    .line 739
    :cond_2
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v3}, Lcom/lenovo/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x0

    .line 742
    .local v1, "trans":Landroid/app/FragmentTransaction;
    :goto_1
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    if-ne v3, p1, :cond_5

    .line 743
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v2, :cond_3

    .line 744
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v2, v3, v1}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 745
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 765
    :cond_3
    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 766
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 739
    .end local v1    # "trans":Landroid/app/FragmentTransaction;
    :cond_4
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    move-result-object v1

    goto :goto_1

    .line 748
    .restart local v1    # "trans":Landroid/app/FragmentTransaction;
    :cond_5
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    :cond_6
    invoke-virtual {v3, v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 749
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v2, :cond_7

    .line 750
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v2, v3, v1}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_7
    move-object v2, p1

    .line 752
    check-cast v2, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .line 753
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v2, :cond_3

    .line 754
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v2, v3, v1}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 757
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    if-eqz v2, :cond_3

    .line 758
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    .line 759
    .local v0, "position":I
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v2, v0}, Llenovo/view/ViewPager;->setCurrentItem(I)V

    goto :goto_2
.end method

.method public setActionModeSeletedAllTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContextView;->setSeletedAllTitle(Ljava/lang/CharSequence;)V

    .line 1887
    return-void
.end method

.method public setActionModeTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1892
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 564
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setPrimaryBackgroundColor(I)V

    .line 565
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContextView;->setBackgroundColor(I)V

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setBackgroundColor(I)V

    .line 571
    :cond_1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 562
    return-void
.end method

.method public setCanTabScroller(Z)V
    .locals 1
    .param p1, "scroller"    # Z

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v0, p1}, Llenovo/view/ViewPager;->canViewpagerScroller(Z)V

    .line 1526
    :cond_0
    return-void
.end method

.method public setContainerBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setContainerBackground(Landroid/graphics/drawable/Drawable;)V

    .line 579
    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/lenovo/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setCustomView(Landroid/view/View;)V

    .line 461
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1418
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/app/ActionBar$LayoutParams;

    .prologue
    .line 1422
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1423
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1424
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1556
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_0

    .line 1557
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1559
    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .prologue
    const/4 v1, 0x4

    .line 475
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 476
    return-void

    .line 475
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    .prologue
    .line 546
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 550
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    .line 553
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/lenovo/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 554
    .local v0, "current":I
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 555
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 557
    :cond_0
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/lenovo/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 558
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .prologue
    const/16 v1, 0x10

    .line 485
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 486
    return-void

    .line 485
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .prologue
    const/4 v1, 0x2

    .line 470
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 471
    return-void

    .line 470
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .prologue
    const/16 v1, 0x8

    .line 480
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 481
    return-void

    .line 480
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2
    .param p1, "useLogo"    # Z

    .prologue
    const/4 v1, 0x1

    .line 465
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 466
    return-void

    .line 465
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 297
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setElevation(F)V

    .line 298
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setElevation(F)V

    .line 301
    :cond_0
    return-void
.end method

.method public setHideOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 862
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 863
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 867
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 2
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    .line 842
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 843
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_0
    iput-boolean p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    .line 847
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 848
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setNavigationContentDescription(I)V

    .line 1069
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 1064
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setNavigationIcon(I)V

    .line 1059
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1054
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 490
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setHomeButtonEnabled(Z)V

    .line 491
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setIcon(I)V

    .line 1530
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1535
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Landroid/app/ActionBar$OnNavigationListener;

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    new-instance v1, Lcom/lenovo/internal/app/NavItemSelectedListener;

    invoke-direct {v1, p2}, Lcom/lenovo/internal/app/NavItemSelectedListener;-><init>(Landroid/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Lcom/lenovo/internal/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1429
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setLogo(I)V

    .line 1544
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 1549
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 1462
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/lenovo/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    .line 1463
    .local v0, "oldMode":I
    packed-switch v0, :pswitch_data_0

    .line 1470
    :goto_0
    if-eq v0, p1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v1, :cond_0

    .line 1471
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 1472
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Lcom/lenovo/internal/widget/ViewUtils;->requestApplyInsets(Landroid/view/View;)V

    .line 1480
    :cond_0
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v1, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setNavigationMode(I)V

    .line 1481
    packed-switch p1, :pswitch_data_1

    .line 1500
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    if-ne p1, v6, :cond_3

    iget-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Lcom/lenovo/internal/widget/DecorToolbar;->setCollapsible(Z)V

    .line 1501
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-ne p1, v6, :cond_4

    iget-boolean v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_4

    :goto_3
    invoke-virtual {v1, v2}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 1502
    return-void

    .line 1465
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getSelectedNavigationIndex()I

    move-result v1

    iput v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 1466
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1467
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0

    .line 1484
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    if-eqz v1, :cond_2

    .line 1485
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v1, v3}, Llenovo/view/ViewPager;->setVisibility(I)V

    .line 1487
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v4}, Llenovo/view/ViewPager;->setOnInternalPageChangeListener(Llenovo/view/ViewPager$OnPageChangeListener;)V

    .line 1488
    new-instance v1, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v4}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    .line 1489
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    invoke-virtual {v1, v4}, Llenovo/view/ViewPager;->setAdapter(Llenovo/view/PagerAdapter;)V

    .line 1492
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 1493
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1494
    iget v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    if-eq v1, v5, :cond_1

    .line 1495
    iget v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setSelectedNavigationItem(I)V

    .line 1496
    iput v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    goto :goto_1

    :cond_3
    move v1, v3

    .line 1500
    goto :goto_2

    :cond_4
    move v2, v3

    .line 1501
    goto :goto_3

    .line 1463
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1481
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public setOffscreenPageLimit(I)V
    .locals 2
    .param p1, "limit"    # I

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    if-eqz v0, :cond_0

    .line 1981
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v0, p1}, Llenovo/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 1986
    :goto_0
    return-void

    .line 1983
    :cond_0
    const-string v0, "liqftest"

    const-string v1, "mViewPager was null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setOnPageChangeListener(Llenovo/view/ViewPager$OnPageChangeListener;)V
    .locals 2
    .param p1, "onPageChangeListener"    # Llenovo/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    if-eqz v0, :cond_0

    .line 1990
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v0, p1}, Llenovo/view/ViewPager;->setOnPageChangeListener(Llenovo/view/ViewPager$OnPageChangeListener;)V

    .line 1995
    :goto_0
    return-void

    .line 1992
    :cond_0
    const-string v0, "liqftest"

    const-string v1, "mViewPager was null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setOptionMenuVisibility(IZ)V
    .locals 5
    .param p1, "tabIndex"    # I
    .param p2, "hasOptionMenu"    # Z

    .prologue
    .line 1961
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    check-cast v1, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .line 1962
    .local v1, "tabi":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    if-eqz v1, :cond_2

    .line 1963
    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasOptionMenu:Z
    invoke-static {v1, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1802(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Z)Z

    .line 1964
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1600(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v0

    .line 1965
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 1966
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1967
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0018

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1968
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasSetOptionMenu:Z
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1700(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1969
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0019

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasOptionMenu:Z
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1800(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1971
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1972
    invoke-static {v0, p2}, Lcom/lenovo/internal/widget/ViewUtils;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 1975
    :cond_1
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v2}, Llenovo/view/ViewPager;->requestLayout()V

    .line 1977
    .end local v0    # "fragment":Landroid/app/Fragment;
    :cond_2
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 504
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 512
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 515
    :goto_0
    return-void

    .line 509
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    goto :goto_0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 416
    iput-boolean p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    .line 417
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 420
    :cond_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 585
    :cond_0
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    .line 575
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 500
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 501
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 542
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 543
    return-void
.end method

.method public setTabImageColor(II)V
    .locals 1
    .param p1, "tabIndex"    # I
    .param p2, "color"    # I

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setTabViewImageColor(II)V

    .line 1958
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 495
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 496
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 533
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 534
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 538
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 539
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 786
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-eqz v0, :cond_0

    .line 787
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    .line 788
    invoke-direct {p0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 789
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setShow(Z)V

    .line 793
    :cond_0
    return-void
.end method

.method public showForSystem()V
    .locals 1

    .prologue
    .line 806
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-eqz v0, :cond_0

    .line 807
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 808
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 810
    :cond_0
    return-void
.end method

.method public startActionMode(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;
    .locals 5
    .param p1, "callback"    # Llenovo/view/ActionMode$Callback;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 608
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActionMode:Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    if-eqz v1, :cond_0

    .line 609
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActionMode:Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    invoke-virtual {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->finish()V

    .line 612
    :cond_0
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/widget/ActionBarContextView;->setActivity(Landroid/app/Activity;)V

    .line 613
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1, v3}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 614
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContextView;->killMode()V

    .line 615
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;Llenovo/view/ActionMode$Callback;)V

    .line 616
    .local v0, "mode":Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;
    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 617
    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 618
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->initForMode(Llenovo/view/ActionMode;)V

    .line 619
    iput-boolean v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mIsActionMode:Z

    .line 620
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-interface {p1}, Llenovo/view/ActionMode$Callback;->isEditorCallBack()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/widget/ActionBarContextView;->hideSelectedAll(Z)V

    .line 621
    invoke-virtual {p0, v4}, Lcom/lenovo/internal/app/WindowDecorActionBar;->animateToMode(Z)V

    .line 624
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    .line 627
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 628
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v3}, Lcom/lenovo/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 629
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_1

    .line 630
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Lcom/lenovo/internal/widget/ViewUtils;->requestApplyInsets(Landroid/view/View;)V

    .line 634
    :cond_1
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 635
    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActionMode:Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    .line 638
    .end local v0    # "mode":Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;
    :goto_0
    return-object v0

    .restart local v0    # "mode":Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
