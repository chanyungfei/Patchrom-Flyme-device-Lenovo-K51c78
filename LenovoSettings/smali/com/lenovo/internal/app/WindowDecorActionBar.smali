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

.field private mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

.field private mCurWindowVisibility:I

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field private mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

.field mDeferredDestroyActionMode:Llenovo/view/ActionMode;

.field mDeferredModeDestroyCallback:Llenovo/view/ActionMode$Callback;

.field private mDisplayHomeAsUpSet:Z

.field private mHasEmbeddedTabs:Z

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field final mHideListener:Landroid/animation/Animator$AnimatorListener;

.field mHideOnContentScroll:Z

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

    .line 88
    const-class v0, Lcom/lenovo/internal/app/WindowDecorActionBar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/lenovo/internal/app/WindowDecorActionBar;->$assertionsDisabled:Z

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/lenovo/internal/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    return-void

    :cond_0
    move v0, v2

    .line 88
    goto :goto_0

    :cond_1
    move v1, v2

    .line 95
    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "overlayMode"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 194
    invoke-direct {p0}, Llenovo/app/ActionBar;-><init>()V

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 112
    const/4 v2, -0x1

    iput v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 135
    iput v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 137
    iput-boolean v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 142
    iput-boolean v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 147
    iput-boolean v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mWindowNoTitle:Z

    .line 149
    new-instance v2, Lcom/lenovo/internal/app/WindowDecorActionBar$1;

    invoke-direct {v2, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$1;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 177
    new-instance v2, Lcom/lenovo/internal/app/WindowDecorActionBar$2;

    invoke-direct {v2, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$2;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 185
    new-instance v2, Lcom/lenovo/internal/app/WindowDecorActionBar$3;

    invoke-direct {v2, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$3;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1517
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;

    .line 1778
    new-instance v2, Lcom/lenovo/internal/app/WindowDecorActionBar$4;

    invoke-direct {v2, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$4;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    .line 1810
    new-instance v2, Lcom/lenovo/internal/app/WindowDecorActionBar$5;

    invoke-direct {v2, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$5;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabListener:Landroid/app/ActionBar$TabListener;

    .line 195
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    .line 196
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 197
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, "decor":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 199
    if-nez p2, :cond_0

    .line 200
    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    .line 202
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 204
    invoke-direct {p0}, Llenovo/app/ActionBar;-><init>()V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 135
    iput v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 137
    iput-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 142
    iput-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 147
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mWindowNoTitle:Z

    .line 149
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$1;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 177
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$2;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 185
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$3;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;

    .line 1778
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$4;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$4;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    .line 1810
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$5;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$5;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabListener:Landroid/app/ActionBar$TabListener;

    .line 205
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 212
    invoke-direct {p0}, Llenovo/app/ActionBar;-><init>()V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 135
    iput v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 137
    iput-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 142
    iput-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 147
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mWindowNoTitle:Z

    .line 149
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$1;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 177
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$2;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 185
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$3;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;

    .line 1778
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$4;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$4;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    .line 1810
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$5;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$5;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabListener:Landroid/app/ActionBar$TabListener;

    .line 213
    sget-boolean v0, Lcom/lenovo/internal/app/WindowDecorActionBar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 214
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/internal/app/WindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/internal/app/WindowDecorActionBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/internal/app/WindowDecorActionBar;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/DecorToolbar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lenovo/internal/app/WindowDecorActionBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarOverlayLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/internal/app/WindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    return v0
.end method

.method static synthetic access$800(Lcom/lenovo/internal/app/WindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    return v0
.end method

.method static synthetic access$900(ZZZ)Z
    .locals 1
    .param p0, "x0"    # Z
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 88
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

    .line 824
    if-eqz p2, :cond_1

    .line 829
    :cond_0
    :goto_0
    return v0

    .line 826
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 827
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanupTabs()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v0, :cond_0

    .line 487
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 490
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 493
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 494
    return-void
.end method

.method private configureTab(Landroid/app/ActionBar$Tab;I)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 601
    move-object v3, p1

    check-cast v3, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .line 602
    .local v3, "tabi":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    invoke-virtual {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    .line 604
    .local v0, "callback":Landroid/app/ActionBar$TabListener;
    if-nez v0, :cond_0

    .line 605
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Action Bar Tab must have a Callback"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 608
    :cond_0
    invoke-virtual {v3, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 609
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 611
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 612
    .local v1, "count":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 613
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 612
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 615
    :cond_1
    return-void
.end method

.method private configureTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "hasOptionMenu"    # Z

    .prologue
    .line 1884
    move-object v3, p1

    check-cast v3, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .line 1885
    .local v3, "tabi":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    invoke-virtual {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    .line 1887
    .local v0, "callback":Landroid/app/ActionBar$TabListener;
    if-nez v0, :cond_0

    .line 1888
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Action Bar Tab must have a Callback"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1891
    :cond_0
    invoke-virtual {v3, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 1892
    const/4 v4, 0x1

    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasSetOptionMenu:Z
    invoke-static {v3, v4}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1602(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Z)Z

    .line 1893
    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasOptionMenu:Z
    invoke-static {v3, p3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1702(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Z)Z

    .line 1895
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1897
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1898
    .local v1, "count":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1899
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 1898
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1901
    :cond_1
    return-void
.end method

.method private ensureTabsExist()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 332
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 358
    :goto_0
    return-void

    .line 336
    :cond_0
    new-instance v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 338
    .local v0, "tabScroller":Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    iget-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-eqz v1, :cond_1

    .line 339
    invoke-virtual {v0, v3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 340
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v1, v0}, Lcom/lenovo/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V

    .line 357
    :goto_1
    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 343
    invoke-virtual {v0, v3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 344
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2

    .line 350
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Lcom/lenovo/internal/widget/ViewUtils;->requestApplyInsets(Landroid/view/View;)V

    .line 355
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTabContainer(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V

    goto :goto_1

    .line 353
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/lenovo/internal/widget/DecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 274
    instance-of v0, p1, Lcom/lenovo/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    .line 275
    check-cast p1, Lcom/lenovo/internal/widget/DecorToolbar;

    .line 277
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 276
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Llenovo/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 277
    check-cast p1, Llenovo/widget/Toolbar;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Llenovo/widget/Toolbar;->getWrapper()Lcom/lenovo/internal/widget/DecorToolbar;

    move-result-object p1

    goto :goto_0

    .line 279
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

    .line 777
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    if-eqz v0, :cond_1

    .line 778
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 779
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 782
    :cond_0
    invoke-direct {p0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 784
    :cond_1
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 12
    .param p1, "decor"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 218
    const v7, 0x7f0b0008

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    iput-object v7, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    .line 219
    iget-object v7, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v7, :cond_0

    .line 220
    iget-object v7, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v7, p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    .line 222
    :cond_0
    const v7, 0x7f0b0016

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getDecorToolbar(Landroid/view/View;)Lcom/lenovo/internal/widget/DecorToolbar;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    .line 223
    const v7, 0x7f0b000b

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lenovo/internal/widget/ActionBarContextView;

    iput-object v7, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    .line 225
    const v7, 0x7f0b0017

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lenovo/internal/widget/ActionBarContainer;

    iput-object v7, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    .line 228
    const v7, 0x7f0b0003

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lenovo/internal/widget/ActionBarContainer;

    iput-object v7, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    .line 229
    const v7, 0x7f0b0013

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 230
    .local v6, "view":Landroid/view/View;
    instance-of v7, v6, Llenovo/view/ViewPager;

    if-eqz v7, :cond_1

    check-cast v6, Llenovo/view/ViewPager;

    .end local v6    # "view":Landroid/view/View;
    iput-object v6, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    .line 232
    :cond_1
    iget-object v7, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-nez v7, :cond_3

    .line 233
    :cond_2
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " can only be used "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "with a compatible window decor layout"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 237
    :cond_3
    iget-object v7, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v7}, Lcom/lenovo/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    .line 239
    iget-object v7, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    sget-object v10, Lcom/lenovo/component/appcompat/R$styleable;->Theme:[I

    invoke-virtual {v7, v10}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 240
    .local v2, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v8, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mWindowNoTitle:Z

    .line 241
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 249
    iget-object v7, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v7}, Lcom/lenovo/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v3

    .line 250
    .local v3, "current":I
    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_7

    move v5, v9

    .line 251
    .local v5, "homeAsUp":Z
    :goto_0
    if-eqz v5, :cond_4

    .line 252
    iput-boolean v9, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 255
    :cond_4
    iget-object v7, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/lenovo/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/lenovo/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 256
    .local v1, "abp":Lcom/lenovo/internal/view/ActionBarPolicy;
    invoke-virtual {v1}, Lcom/lenovo/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v5, :cond_8

    :cond_5
    move v7, v9

    :goto_1
    invoke-virtual {p0, v7}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setHomeButtonEnabled(Z)V

    .line 258
    invoke-virtual {v1}, Lcom/lenovo/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mWindowNoTitle:Z

    if-eqz v7, :cond_9

    :goto_2
    invoke-direct {p0, v9}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 260
    iget-object v7, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    sget-object v10, Lcom/lenovo/component/appcompat/R$styleable;->ActionBar:[I

    const v11, 0x10102ce

    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 266
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v7, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08001b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 267
    .local v4, "elevation":I
    if-eqz v4, :cond_6

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_6

    .line 268
    int-to-float v7, v4

    invoke-virtual {p0, v7}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setElevation(F)V

    .line 270
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 271
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "abp":Lcom/lenovo/internal/view/ActionBarPolicy;
    .end local v4    # "elevation":I
    .end local v5    # "homeAsUp":Z
    :cond_7
    move v5, v8

    .line 250
    goto :goto_0

    .restart local v1    # "abp":Lcom/lenovo/internal/view/ActionBarPolicy;
    .restart local v5    # "homeAsUp":Z
    :cond_8
    move v7, v8

    .line 256
    goto :goto_1

    :cond_9
    move v9, v8

    .line 258
    goto :goto_2
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 5
    .param p1, "hasEmbeddedTabs"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 302
    iput-boolean p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    .line 304
    iget-boolean v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_1

    .line 305
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v3, v4}, Lcom/lenovo/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V

    .line 306
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v4}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTabContainer(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V

    .line 311
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 312
    .local v0, "isInTabMode":Z
    :goto_1
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_0

    .line 313
    if-eqz v0, :cond_3

    .line 314
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 315
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 321
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-static {v3}, Lcom/lenovo/internal/widget/ViewUtils;->requestApplyInsets(Landroid/view/View;)V

    .line 327
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    iget-boolean v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    move v3, v1

    :goto_3
    invoke-interface {v4, v3}, Lcom/lenovo/internal/widget/DecorToolbar;->setCollapsible(Z)V

    .line 328
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    iget-boolean v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {v3, v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 329
    return-void

    .line 308
    .end local v0    # "isInTabMode":Z
    :cond_1
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v4}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTabContainer(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V

    .line 309
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-interface {v3, v4}, Lcom/lenovo/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 311
    goto :goto_1

    .line 324
    .restart local v0    # "isInTabMode":Z
    :cond_3
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v2

    .line 327
    goto :goto_3

    :cond_5
    move v1, v2

    .line 328
    goto :goto_4
.end method

.method private showForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 752
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    if-nez v0, :cond_1

    .line 753
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 754
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 757
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 759
    :cond_1
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 4
    .param p1, "fromSystem"    # Z

    .prologue
    .line 835
    iget-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    iget-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    iget-boolean v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    invoke-static {v1, v2, v3}, Lcom/lenovo/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    .line 838
    .local v0, "shown":Z
    if-eqz v0, :cond_1

    .line 839
    iget-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-nez v1, :cond_0

    .line 840
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 841
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->doShow(Z)V

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 844
    :cond_1
    iget-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_0

    .line 845
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 846
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
    .line 1854
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lenovo/internal/app/WindowDecorActionBar;->addFragmentTab(Landroid/app/ActionBar$Tab;IZZ)V

    .line 1855
    return-void
.end method

.method public addFragmentTab(Landroid/app/ActionBar$Tab;IZZ)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z
    .param p4, "hasOptionMenu"    # Z

    .prologue
    .line 1872
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 1873
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 1874
    invoke-direct {p0, p1, p2, p4}, Lcom/lenovo/internal/app/WindowDecorActionBar;->configureTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 1875
    if-eqz p3, :cond_0

    .line 1876
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1878
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    if-eqz v0, :cond_1

    .line 1879
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->notifyDataSetChanged()V

    .line 1880
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llenovo/view/ViewPager;->setUpdateMenuWhenScroller(Z)V

    .line 1881
    return-void
.end method

.method public addFragmentTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "hasOptionMenu"    # Z

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar;->addFragmentTab(Landroid/app/ActionBar$Tab;ZZ)V

    .line 1850
    return-void
.end method

.method public addFragmentTab(Landroid/app/ActionBar$Tab;ZZ)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z
    .param p3, "hasOptionMenu"    # Z

    .prologue
    .line 1859
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 1860
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 1861
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/lenovo/internal/app/WindowDecorActionBar;->configureTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 1862
    if-eqz p2, :cond_0

    .line 1863
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1865
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    if-eqz v0, :cond_1

    .line 1866
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->notifyDataSetChanged()V

    .line 1867
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llenovo/view/ViewPager;->setUpdateMenuWhenScroller(Z)V

    .line 1868
    return-void
.end method

.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 620
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 624
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 625
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 641
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 642
    invoke-direct {p0, p1, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar;->configureTab(Landroid/app/ActionBar$Tab;I)V

    .line 643
    if-eqz p3, :cond_0

    .line 644
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->notifyDataSetChanged()V

    .line 647
    :cond_1
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 630
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 631
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->configureTab(Landroid/app/ActionBar$Tab;I)V

    .line 632
    if-eqz p2, :cond_0

    .line 633
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->notifyDataSetChanged()V

    .line 636
    :cond_1
    return-void
.end method

.method public animateToMode(Z)V
    .locals 4
    .param p1, "toActionMode"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 973
    if-eqz p1, :cond_0

    .line 974
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->showForActionMode()V

    .line 979
    :goto_0
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Lcom/lenovo/internal/widget/DecorToolbar;->animateToVisibility(I)V

    .line 980
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/lenovo/internal/widget/ActionBarContextView;->animateToVisibility(I)V

    .line 982
    return-void

    .line 976
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->hideForActionMode()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 979
    goto :goto_1

    :cond_2
    move v2, v1

    .line 980
    goto :goto_2
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->collapseActionView()V

    .line 1041
    const/4 v0, 0x1

    .line 1043
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

    .line 361
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Llenovo/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Llenovo/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Llenovo/view/ActionMode;

    invoke-interface {v0, v1}, Llenovo/view/ActionMode$Callback;->onDestroyActionMode(Llenovo/view/ActionMode;)V

    .line 363
    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Llenovo/view/ActionMode;

    .line 364
    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Llenovo/view/ActionMode$Callback;

    .line 366
    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 410
    iget-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    if-ne p1, v2, :cond_1

    .line 419
    :cond_0
    return-void

    .line 413
    :cond_1
    iput-boolean p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    .line 415
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 416
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 417
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Landroid/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 416
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

    .line 924
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v5, :cond_0

    .line 925
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    .line 928
    :cond_0
    iget v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v5, :cond_5

    sget-boolean v5, Lcom/lenovo/internal/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_1

    if-eqz p1, :cond_5

    .line 930
    :cond_1
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v11}, Lcom/lenovo/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 931
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 932
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 933
    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/lenovo/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v3, v5

    .line 934
    .local v3, "endingY":F
    if-eqz p1, :cond_2

    .line 935
    new-array v4, v8, [I

    fill-array-data v4, :array_0

    .line 936
    .local v4, "topLeft":[I
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v4}, Lcom/lenovo/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 937
    aget v5, v4, v9

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 939
    .end local v4    # "topLeft":[I
    :cond_2
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v9, [F

    aput v3, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 940
    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 941
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 942
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 943
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v8, [F

    const/4 v8, 0x0

    aput v8, v7, v10

    aput v3, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 946
    :cond_3
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/lenovo/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 947
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v11}, Lcom/lenovo/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 948
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

    .line 951
    :cond_4
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const v6, 0x10a0005

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 953
    const-wide/16 v6, 0xfa

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 954
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 955
    iput-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 956
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 960
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "endingY":F
    :goto_0
    return-void

    .line 958
    :cond_5
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 935
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

    .line 852
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v5, :cond_0

    .line 853
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    .line 855
    :cond_0
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/lenovo/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 857
    iget v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v5, :cond_6

    sget-boolean v5, Lcom/lenovo/internal/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_1

    if-eqz p1, :cond_6

    .line 860
    :cond_1
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 861
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/lenovo/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v3, v5

    .line 862
    .local v3, "startingY":F
    if-eqz p1, :cond_2

    .line 863
    new-array v4, v11, [I

    fill-array-data v4, :array_0

    .line 864
    .local v4, "topLeft":[I
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v4}, Lcom/lenovo/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 865
    aget v5, v4, v10

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 867
    .end local v4    # "topLeft":[I
    :cond_2
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v3}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 868
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 869
    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 870
    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 871
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 872
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 873
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v11, [F

    aput v3, v7, v9

    aput v8, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 878
    :cond_3
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v5}, Lcom/lenovo/internal/widget/DecorToolbar;->isSplit()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 880
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    iget-object v6, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v6}, Lcom/lenovo/internal/widget/ActionBarContainer;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 881
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/lenovo/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 882
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 884
    :cond_4
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const v6, 0x10a0006

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 886
    const-wide/16 v6, 0xfa

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 894
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 895
    iput-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 896
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 913
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "startingY":F
    :goto_0
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v5, :cond_5

    .line 914
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-static {v5}, Lcom/lenovo/internal/widget/ViewUtils;->requestApplyInsets(Landroid/view/View;)V

    .line 921
    :cond_5
    return-void

    .line 898
    :cond_6
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v6}, Lcom/lenovo/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 899
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 900
    iget-boolean v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_7

    .line 901
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 905
    :cond_7
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v5}, Lcom/lenovo/internal/widget/DecorToolbar;->isSplit()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 907
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v6}, Lcom/lenovo/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 908
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 909
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/lenovo/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 911
    :cond_8
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 863
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
    .line 740
    iput-boolean p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 741
    return-void
.end method

.method public finishActionMode()V
    .locals 1

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActionMode:Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    if-eqz v0, :cond_0

    .line 1905
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActionMode:Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->finish()V

    .line 1907
    :cond_0
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getElevation()F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHideOffset()I
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1404
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1400
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 1402
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getDropdownItemCount()I

    move-result v0

    goto :goto_0

    .line 1398
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
    .line 560
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1386
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/lenovo/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1392
    :cond_0
    :goto_0
    return v0

    .line 1388
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v0

    goto :goto_0

    .line 1390
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getDropdownSelectedPosition()I

    move-result v0

    goto :goto_0

    .line 1386
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
    .line 731
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabFragmentAt(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getItemAt(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 5

    .prologue
    .line 985
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 986
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 987
    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 988
    .local v0, "currentTheme":Landroid/content/res/Resources$Theme;
    const v3, 0x1010397

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 989
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 991
    .local v2, "targetThemeRes":I
    if-eqz v2, :cond_1

    .line 992
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    .line 997
    .end local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "targetThemeRes":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    return-object v3

    .line 994
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
    .line 552
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-nez v0, :cond_0

    .line 771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    .line 772
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 774
    :cond_0
    return-void
.end method

.method public hideForSystem()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 787
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-nez v0, :cond_0

    .line 788
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 789
    invoke-direct {p0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 791
    :cond_0
    return-void
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    .prologue
    .line 805
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

    .line 963
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getHeight()I

    move-result v0

    .line 965
    .local v0, "height":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    .line 966
    iget-boolean v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getHideOffset()I

    move-result v3

    if-ge v3, v0, :cond_1

    .line 968
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 966
    goto :goto_0

    .line 968
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
    .line 1002
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
    .line 1469
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    if-eqz v0, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v0, p1}, Llenovo/view/ViewPager;->setLockViewPager(Z)V

    .line 1472
    :cond_0
    return-void
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 652
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    if-eqz v1, :cond_0

    .line 653
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    .line 654
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 658
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
    .line 1828
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    if-eqz v1, :cond_0

    .line 1829
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    .line 1830
    .local v0, "tab":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->bundle:Landroid/os/Bundle;
    invoke-static {v0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1902(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1831
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 1834
    .end local v0    # "tab":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/lenovo/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mWindowNoTitle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 299
    return-void

    .line 298
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContentScrollStarted()V
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1029
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 1031
    :cond_0
    return-void
.end method

.method public onContentScrollStopped()V
    .locals 0

    .prologue
    .line 1035
    return-void
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 387
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    .line 394
    :cond_0
    :goto_0
    return v1

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->openOptionsMenu()Z

    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 369
    iput p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 370
    return-void
.end method

.method public openOptionsMenu()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public removeAllTabs()V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->cleanupTabs()V

    .line 483
    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 407
    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 663
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->removeTabAt(I)V

    .line 664
    return-void
.end method

.method public removeTabAt(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 668
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-nez v4, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v3

    .line 675
    .local v3, "selectedTabPosition":I
    :goto_1
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v4, p1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 676
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .line 677
    .local v2, "removedTab":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    if-eqz v2, :cond_2

    .line 678
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 681
    :cond_2
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 682
    .local v1, "newTabCount":I
    move v0, p1

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 683
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 682
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 673
    .end local v0    # "i":I
    .end local v1    # "newTabCount":I
    .end local v2    # "removedTab":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    .end local v3    # "selectedTabPosition":I
    :cond_3
    iget v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    goto :goto_1

    .line 686
    .restart local v0    # "i":I
    .restart local v1    # "newTabCount":I
    .restart local v2    # "removedTab":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    .restart local v3    # "selectedTabPosition":I
    :cond_4
    if-ne v3, p1, :cond_0

    .line 687
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

    .line 693
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 694
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    :cond_0
    iput v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 727
    :cond_1
    :goto_0
    return-void

    .line 698
    :cond_2
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v3}, Lcom/lenovo/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x0

    .line 701
    .local v1, "trans":Landroid/app/FragmentTransaction;
    :goto_1
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    if-ne v3, p1, :cond_5

    .line 702
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v2, :cond_3

    .line 703
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v2, v3, v1}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 704
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 724
    :cond_3
    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 725
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 698
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

    .line 707
    .restart local v1    # "trans":Landroid/app/FragmentTransaction;
    :cond_5
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    :cond_6
    invoke-virtual {v3, v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 708
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v2, :cond_7

    .line 709
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v2, v3, v1}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_7
    move-object v2, p1

    .line 711
    check-cast v2, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .line 712
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v2, :cond_3

    .line 713
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v2, v3, v1}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 716
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    if-eqz v2, :cond_3

    .line 717
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    .line 718
    .local v0, "position":I
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v2, v0}, Llenovo/view/ViewPager;->setCurrentItem(I)V

    goto :goto_2
.end method

.method public setActionModeSeletedAllTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContextView;->setSeletedAllTitle(Ljava/lang/CharSequence;)V

    .line 1840
    return-void
.end method

.method public setActionModeTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1845
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 528
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setPrimaryBackgroundColor(I)V

    .line 529
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContextView;->setBackgroundColor(I)V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setBackgroundColor(I)V

    .line 535
    :cond_1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 526
    return-void
.end method

.method public setCanTabScroller(Z)V
    .locals 1
    .param p1, "scroller"    # Z

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    if-eqz v0, :cond_0

    .line 1477
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v0, p1}, Llenovo/view/ViewPager;->canViewpagerScroller(Z)V

    .line 1479
    :cond_0
    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 423
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

    .line 425
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1371
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/app/ActionBar$LayoutParams;

    .prologue
    .line 1375
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1376
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1377
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1509
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_0

    .line 1510
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1512
    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .prologue
    const/4 v1, 0x4

    .line 439
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 440
    return-void

    .line 439
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    .prologue
    .line 510
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 514
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    .line 517
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/lenovo/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 518
    .local v0, "current":I
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 519
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/lenovo/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 522
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .prologue
    const/16 v1, 0x10

    .line 449
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 450
    return-void

    .line 449
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .prologue
    const/4 v1, 0x2

    .line 434
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 435
    return-void

    .line 434
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .prologue
    const/16 v1, 0x8

    .line 444
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 445
    return-void

    .line 444
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2
    .param p1, "useLogo"    # Z

    .prologue
    const/4 v1, 0x1

    .line 429
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 430
    return-void

    .line 429
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 286
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setElevation(F)V

    .line 287
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setElevation(F)V

    .line 290
    :cond_0
    return-void
.end method

.method public setHideOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 815
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 816
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 820
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 2
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    .line 795
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_0
    iput-boolean p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    .line 800
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 801
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setNavigationContentDescription(I)V

    .line 1023
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 1018
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setNavigationIcon(I)V

    .line 1013
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1008
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 454
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setHomeButtonEnabled(Z)V

    .line 455
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setIcon(I)V

    .line 1483
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1488
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Landroid/app/ActionBar$OnNavigationListener;

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    new-instance v1, Lcom/lenovo/internal/app/NavItemSelectedListener;

    invoke-direct {v1, p2}, Lcom/lenovo/internal/app/NavItemSelectedListener;-><init>(Landroid/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Lcom/lenovo/internal/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1382
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setLogo(I)V

    .line 1497
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 1502
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

    .line 1415
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/lenovo/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    .line 1416
    .local v0, "oldMode":I
    packed-switch v0, :pswitch_data_0

    .line 1423
    :goto_0
    if-eq v0, p1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v1, :cond_0

    .line 1424
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 1425
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Lcom/lenovo/internal/widget/ViewUtils;->requestApplyInsets(Landroid/view/View;)V

    .line 1433
    :cond_0
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v1, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setNavigationMode(I)V

    .line 1434
    packed-switch p1, :pswitch_data_1

    .line 1453
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    if-ne p1, v6, :cond_3

    iget-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Lcom/lenovo/internal/widget/DecorToolbar;->setCollapsible(Z)V

    .line 1454
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-ne p1, v6, :cond_4

    iget-boolean v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_4

    :goto_3
    invoke-virtual {v1, v2}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 1455
    return-void

    .line 1418
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getSelectedNavigationIndex()I

    move-result v1

    iput v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 1419
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1420
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0

    .line 1437
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    if-eqz v1, :cond_2

    .line 1438
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v1, v3}, Llenovo/view/ViewPager;->setVisibility(I)V

    .line 1440
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v4}, Llenovo/view/ViewPager;->setOnPageChangeListener(Llenovo/view/ViewPager$OnPageChangeListener;)V

    .line 1441
    new-instance v1, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v4}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    .line 1442
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    invoke-virtual {v1, v4}, Llenovo/view/ViewPager;->setAdapter(Llenovo/view/PagerAdapter;)V

    .line 1445
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 1446
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1447
    iget v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    if-eq v1, v5, :cond_1

    .line 1448
    iget v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setSelectedNavigationItem(I)V

    .line 1449
    iput v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    goto :goto_1

    :cond_3
    move v1, v3

    .line 1453
    goto :goto_2

    :cond_4
    move v2, v3

    .line 1454
    goto :goto_3

    .line 1416
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1434
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public setOffscreenPageLimit(I)V
    .locals 2
    .param p1, "limit"    # I

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    if-eqz v0, :cond_0

    .line 1934
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v0, p1}, Llenovo/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 1939
    :goto_0
    return-void

    .line 1936
    :cond_0
    const-string v0, "liqftest"

    const-string v1, "mViewPager was null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
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
    .line 1914
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    check-cast v1, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .line 1915
    .local v1, "tabi":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    if-eqz v1, :cond_2

    .line 1916
    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasOptionMenu:Z
    invoke-static {v1, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1702(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Z)Z

    .line 1917
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1500(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v0

    .line 1918
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 1919
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1920
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0018

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1921
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasSetOptionMenu:Z
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1600(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1922
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0019

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasOptionMenu:Z
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1700(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1924
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1925
    invoke-static {v0, p2}, Lcom/lenovo/internal/widget/ViewUtils;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 1928
    :cond_1
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v2}, Llenovo/view/ViewPager;->requestLayout()V

    .line 1930
    .end local v0    # "fragment":Landroid/app/Fragment;
    :cond_2
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 468
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 479
    :goto_0
    return-void

    .line 473
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    goto :goto_0

    .line 468
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
    .line 380
    iput-boolean p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    .line 381
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 384
    :cond_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 542
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 545
    :cond_0
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 538
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    .line 539
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 464
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 465
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 507
    return-void
.end method

.method public setTabImageColor(II)V
    .locals 1
    .param p1, "tabIndex"    # I
    .param p2, "color"    # I

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setTabViewImageColor(II)V

    .line 1911
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 459
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 460
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 498
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 503
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 745
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-eqz v0, :cond_0

    .line 746
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    .line 747
    invoke-direct {p0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 749
    :cond_0
    return-void
.end method

.method public showForSystem()V
    .locals 1

    .prologue
    .line 762
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-eqz v0, :cond_0

    .line 763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 764
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 766
    :cond_0
    return-void
.end method

.method public startActionMode(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;
    .locals 4
    .param p1, "callback"    # Llenovo/view/ActionMode$Callback;

    .prologue
    const/4 v3, 0x0

    .line 568
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActionMode:Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActionMode:Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    invoke-virtual {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->finish()V

    .line 572
    :cond_0
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/widget/ActionBarContextView;->setActivity(Landroid/app/Activity;)V

    .line 573
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1, v3}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 574
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContextView;->killMode()V

    .line 575
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;Llenovo/view/ActionMode$Callback;)V

    .line 576
    .local v0, "mode":Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;
    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 577
    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 578
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->initForMode(Llenovo/view/ActionMode;)V

    .line 579
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-interface {p1}, Llenovo/view/ActionMode$Callback;->isEditorCallBack()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/widget/ActionBarContextView;->hideSelectedAll(Z)V

    .line 580
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->animateToMode(Z)V

    .line 583
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    .line 586
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 587
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v3}, Lcom/lenovo/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 588
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_1

    .line 589
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Lcom/lenovo/internal/widget/ViewUtils;->requestApplyInsets(Landroid/view/View;)V

    .line 593
    :cond_1
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 594
    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActionMode:Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    .line 597
    .end local v0    # "mode":Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;
    :goto_0
    return-object v0

    .restart local v0    # "mode":Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
