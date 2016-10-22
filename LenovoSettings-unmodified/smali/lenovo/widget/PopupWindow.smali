.class public Llenovo/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/widget/PopupWindow$PopupViewContainer;,
        Llenovo/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAlphaView:Landroid/view/View;

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnchoredGravity:I

.field private mAnimationStyle:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDrawingLocation:[I

.field private mElevation:F

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private mOnDismissListener:Llenovo/widget/PopupWindow$OnDismissListener;

.field private final mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mOverlapAnchor:Z

.field private mPopupHeight:I

.field private mPopupView:Landroid/view/View;

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mPopupWidth:I

.field private mScreenLocation:[I

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Llenovo/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Llenovo/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 226
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Llenovo/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 253
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llenovo/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 182
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Llenovo/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Llenovo/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput v2, p0, Llenovo/widget/PopupWindow;->mInputMethodMode:I

    .line 99
    iput v1, p0, Llenovo/widget/PopupWindow;->mSoftInputMode:I

    .line 100
    iput-boolean v1, p0, Llenovo/widget/PopupWindow;->mTouchable:Z

    .line 101
    iput-boolean v2, p0, Llenovo/widget/PopupWindow;->mOutsideTouchable:Z

    .line 102
    iput-boolean v1, p0, Llenovo/widget/PopupWindow;->mClippingEnabled:Z

    .line 103
    iput v4, p0, Llenovo/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 106
    iput-boolean v1, p0, Llenovo/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 107
    iput-boolean v2, p0, Llenovo/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 124
    new-array v1, v3, [I

    iput-object v1, p0, Llenovo/widget/PopupWindow;->mDrawingLocation:[I

    .line 125
    new-array v1, v3, [I

    iput-object v1, p0, Llenovo/widget/PopupWindow;->mScreenLocation:[I

    .line 126
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Llenovo/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 133
    const/16 v1, 0x3ea

    iput v1, p0, Llenovo/widget/PopupWindow;->mWindowLayoutType:I

    .line 136
    iput-boolean v2, p0, Llenovo/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 138
    iput v4, p0, Llenovo/widget/PopupWindow;->mAnimationStyle:I

    .line 146
    new-instance v1, Llenovo/widget/PopupWindow$1;

    invoke-direct {v1, p0}, Llenovo/widget/PopupWindow$1;-><init>(Llenovo/widget/PopupWindow;)V

    iput-object v1, p0, Llenovo/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 200
    iput-object p1, p0, Llenovo/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 201
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Llenovo/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 203
    sget-object v1, Lcom/lenovo/component/appcompat/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 209
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Llenovo/widget/PopupWindow;->mOverlapAnchor:Z

    .line 215
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 238
    invoke-direct {p0, p1, v0, v0}, Llenovo/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 239
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Llenovo/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 269
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 4
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput v1, p0, Llenovo/widget/PopupWindow;->mInputMethodMode:I

    .line 99
    iput v0, p0, Llenovo/widget/PopupWindow;->mSoftInputMode:I

    .line 100
    iput-boolean v0, p0, Llenovo/widget/PopupWindow;->mTouchable:Z

    .line 101
    iput-boolean v1, p0, Llenovo/widget/PopupWindow;->mOutsideTouchable:Z

    .line 102
    iput-boolean v0, p0, Llenovo/widget/PopupWindow;->mClippingEnabled:Z

    .line 103
    iput v2, p0, Llenovo/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 106
    iput-boolean v0, p0, Llenovo/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 107
    iput-boolean v1, p0, Llenovo/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 124
    new-array v0, v3, [I

    iput-object v0, p0, Llenovo/widget/PopupWindow;->mDrawingLocation:[I

    .line 125
    new-array v0, v3, [I

    iput-object v0, p0, Llenovo/widget/PopupWindow;->mScreenLocation:[I

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Llenovo/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 133
    const/16 v0, 0x3ea

    iput v0, p0, Llenovo/widget/PopupWindow;->mWindowLayoutType:I

    .line 136
    iput-boolean v1, p0, Llenovo/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 138
    iput v2, p0, Llenovo/widget/PopupWindow;->mAnimationStyle:I

    .line 146
    new-instance v0, Llenovo/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Llenovo/widget/PopupWindow$1;-><init>(Llenovo/widget/PopupWindow;)V

    iput-object v0, p0, Llenovo/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 284
    if-eqz p1, :cond_0

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Llenovo/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 286
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Llenovo/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 288
    :cond_0
    invoke-virtual {p0, p1}, Llenovo/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 289
    invoke-virtual {p0, p2}, Llenovo/widget/PopupWindow;->setWidth(I)V

    .line 290
    invoke-virtual {p0, p3}, Llenovo/widget/PopupWindow;->setHeight(I)V

    .line 291
    invoke-virtual {p0, p4}, Llenovo/widget/PopupWindow;->setFocusable(Z)V

    .line 292
    return-void
.end method

.method static synthetic access$000(Llenovo/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/PopupWindow;

    .prologue
    .line 61
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Llenovo/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/PopupWindow;

    .prologue
    .line 61
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Llenovo/widget/PopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Llenovo/widget/PopupWindow;

    .prologue
    .line 61
    iget-boolean v0, p0, Llenovo/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$102(Llenovo/widget/PopupWindow;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Llenovo/widget/PopupWindow;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 61
    iput-object p1, p0, Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1100()[I
    .locals 1

    .prologue
    .line 61
    sget-object v0, Llenovo/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$1200(Llenovo/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/PopupWindow;

    .prologue
    .line 61
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$1300(Llenovo/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/PopupWindow;

    .prologue
    .line 61
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mAlphaView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Llenovo/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Llenovo/widget/PopupWindow;

    .prologue
    .line 61
    iget v0, p0, Llenovo/widget/PopupWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$300(Llenovo/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Llenovo/widget/PopupWindow;

    .prologue
    .line 61
    iget v0, p0, Llenovo/widget/PopupWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$400(Llenovo/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Llenovo/widget/PopupWindow;

    .prologue
    .line 61
    iget v0, p0, Llenovo/widget/PopupWindow;->mAnchoredGravity:I

    return v0
.end method

.method static synthetic access$500(Llenovo/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 1
    .param p0, "x0"    # Llenovo/widget/PopupWindow;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 61
    invoke-direct/range {p0 .. p5}, Llenovo/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Llenovo/widget/PopupWindow;Z)V
    .locals 0
    .param p0, "x0"    # Llenovo/widget/PopupWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Llenovo/widget/PopupWindow;->updateAboveAnchor(Z)V

    return-void
.end method

.method static synthetic access$700(Llenovo/widget/PopupWindow;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/PopupWindow;

    .prologue
    .line 61
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$800(Llenovo/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/PopupWindow;

    .prologue
    .line 61
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Llenovo/widget/PopupWindow;)Llenovo/widget/PopupWindow$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/PopupWindow;

    .prologue
    .line 61
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mOnDismissListener:Llenovo/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method private computeAnimationResource()I
    .locals 1

    .prologue
    .line 1132
    const/4 v0, 0x0

    return v0
.end method

.method private computeFlags(I)I
    .locals 3
    .param p1, "curFlags"    # I

    .prologue
    const/high16 v2, 0x20000

    .line 1079
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1087
    iget-boolean v0, p0, Llenovo/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1088
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1090
    :cond_0
    iget-boolean v0, p0, Llenovo/widget/PopupWindow;->mFocusable:Z

    if-nez v0, :cond_9

    .line 1091
    or-int/lit8 p1, p1, 0x8

    .line 1092
    iget v0, p0, Llenovo/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1093
    or-int/2addr p1, v2

    .line 1098
    :cond_1
    :goto_0
    iget-boolean v0, p0, Llenovo/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_2

    .line 1099
    or-int/lit8 p1, p1, 0x10

    .line 1101
    :cond_2
    iget-boolean v0, p0, Llenovo/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    .line 1102
    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    .line 1104
    :cond_3
    iget-boolean v0, p0, Llenovo/widget/PopupWindow;->mClippingEnabled:Z

    if-nez v0, :cond_4

    .line 1105
    or-int/lit16 p1, p1, 0x200

    .line 1107
    :cond_4
    invoke-virtual {p0}, Llenovo/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1108
    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 1110
    :cond_5
    iget-boolean v0, p0, Llenovo/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_6

    .line 1111
    or-int/lit16 p1, p1, 0x100

    .line 1113
    :cond_6
    iget-boolean v0, p0, Llenovo/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_7

    .line 1114
    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 1116
    :cond_7
    iget-boolean v0, p0, Llenovo/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_8

    .line 1117
    or-int/lit8 p1, p1, 0x20

    .line 1119
    :cond_8
    return p1

    .line 1095
    :cond_9
    iget v0, p0, Llenovo/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1096
    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1056
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1061
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1062
    iget v1, p0, Llenovo/widget/PopupWindow;->mWidth:I

    iput v1, p0, Llenovo/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1063
    iget v1, p0, Llenovo/widget/PopupWindow;->mHeight:I

    iput v1, p0, Llenovo/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1064
    iget-object v1, p0, Llenovo/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1065
    iget-object v1, p0, Llenovo/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1069
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Llenovo/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1070
    iget v1, p0, Llenovo/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1071
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1072
    iget v1, p0, Llenovo/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1073
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1075
    return-object v0

    .line 1067
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "gravity"    # I

    .prologue
    const/4 v6, 0x0

    .line 1153
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 1154
    .local v3, "sizePoint":Landroid/graphics/Point;
    iget-object v4, p0, Llenovo/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1156
    .local v0, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1157
    iget v4, v3, Landroid/graphics/Point;->y:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v4, v5

    .line 1159
    .local v1, "heightNav":I
    const/4 v2, 0x0

    .line 1160
    .local v2, "isMoreBottom":Z
    iget-object v4, p0, Llenovo/widget/PopupWindow;->mScreenLocation:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1161
    iget-object v4, p0, Llenovo/widget/PopupWindow;->mScreenLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget v5, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v5, v5, 0x2

    if-lt v4, v5, :cond_0

    .line 1162
    const/4 v2, 0x1

    .line 1165
    :cond_0
    if-nez v2, :cond_1

    iget-object v4, p0, Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1166
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1167
    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1172
    :goto_0
    const/16 v4, 0x53

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1262
    return v6

    .line 1169
    :cond_1
    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1170
    iget-object v4, p0, Llenovo/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v1

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1028
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1031
    :cond_0
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-boolean v1, p0, Llenovo/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1032
    invoke-direct {p0}, Llenovo/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1034
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1035
    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 8
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v7, -0x1

    .line 983
    iget-object v5, p0, Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Llenovo/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    iget-object v5, p0, Llenovo/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v5, :cond_1

    .line 984
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 988
    :cond_1
    new-instance v3, Llenovo/widget/PopupWindow$PopupViewContainer;

    iget-object v5, p0, Llenovo/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v5}, Llenovo/widget/PopupWindow$PopupViewContainer;-><init>(Llenovo/widget/PopupWindow;Landroid/content/Context;)V

    .line 989
    .local v3, "popupViewContainer":Llenovo/widget/PopupWindow$PopupViewContainer;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 992
    .local v2, "listParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xc

    invoke-virtual {v2, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 994
    new-instance v5, Landroid/view/View;

    iget-object v6, p0, Llenovo/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Llenovo/widget/PopupWindow;->mAlphaView:Landroid/view/View;

    .line 995
    iget-object v5, p0, Llenovo/widget/PopupWindow;->mAlphaView:Landroid/view/View;

    const/high16 v6, 0x70000000

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 996
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 999
    .local v0, "alphaParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Llenovo/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, v5}, Lcom/lenovo/internal/widget/ViewUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1000
    iget-object v5, p0, Llenovo/widget/PopupWindow;->mAlphaView:Landroid/view/View;

    invoke-virtual {v3, v5, v0}, Llenovo/widget/PopupWindow$PopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1002
    iget-object v5, p0, Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v5, v2}, Llenovo/widget/PopupWindow$PopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1004
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1005
    .local v4, "tv":Landroid/util/TypedValue;
    iget-object v5, p0, Llenovo/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010031

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_2

    .line 1006
    iget-object v5, p0, Llenovo/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1007
    .local v1, "color":I
    iget-object v5, p0, Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1011
    .end local v1    # "color":I
    :goto_0
    iput-object v3, p0, Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1015
    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v5, p0, Llenovo/widget/PopupWindow;->mPopupWidth:I

    .line 1016
    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v5, p0, Llenovo/widget/PopupWindow;->mPopupHeight:I

    .line 1017
    return-void

    .line 1009
    :cond_2
    iget-object v5, p0, Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;

    const v6, -0x50506

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private registerForScrollChanged(Landroid/view/View;III)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    .line 1649
    invoke-direct {p0}, Llenovo/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1651
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Llenovo/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1652
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1653
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1654
    iget-object v1, p0, Llenovo/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1657
    :cond_0
    iput p2, p0, Llenovo/widget/PopupWindow;->mAnchorXoff:I

    .line 1658
    iput p3, p0, Llenovo/widget/PopupWindow;->mAnchorYoff:I

    .line 1659
    iput p4, p0, Llenovo/widget/PopupWindow;->mAnchoredGravity:I

    .line 1660
    return-void
.end method

.method private setLayoutDirectionFromAnchor()V
    .locals 2

    .prologue
    .line 1038
    iget-object v1, p0, Llenovo/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1039
    iget-object v1, p0, Llenovo/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1040
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Llenovo/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_0

    .line 1044
    .end local v0    # "anchor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 4

    .prologue
    .line 1636
    iget-object v1, p0, Llenovo/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1637
    .local v1, "anchorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1638
    .local v0, "anchor":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1639
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "anchor":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 1641
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    .line 1642
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1643
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Llenovo/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1645
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Llenovo/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1646
    return-void
.end method

.method private update(Landroid/view/View;ZIIZIII)V
    .locals 18
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "updateLocation"    # Z
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "updateDimension"    # Z
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "gravity"    # I

    .prologue
    .line 1581
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v5, :cond_1

    .line 1623
    :cond_0
    :goto_0
    return-void

    .line 1585
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Llenovo/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1586
    .local v15, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz p2, :cond_7

    move-object/from16 v0, p0

    iget v5, v0, Llenovo/widget/PopupWindow;->mAnchorXoff:I

    move/from16 v0, p3

    if-ne v5, v0, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Llenovo/widget/PopupWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v5, v0, :cond_7

    :cond_2
    const/4 v14, 0x1

    .line 1588
    .local v14, "needsUpdate":Z
    :goto_1
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p1

    if-ne v5, v0, :cond_3

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-boolean v5, v0, Llenovo/widget/PopupWindow;->mIsDropdown:Z

    if-nez v5, :cond_8

    .line 1589
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Llenovo/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    .line 1597
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 1599
    .local v7, "p":Landroid/view/WindowManager$LayoutParams;
    if-eqz p5, :cond_5

    .line 1600
    const/4 v5, -0x1

    move/from16 v0, p6

    if-ne v0, v5, :cond_9

    .line 1601
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/PopupWindow;->mPopupWidth:I

    move/from16 p6, v0

    .line 1605
    :goto_3
    const/4 v5, -0x1

    move/from16 v0, p7

    if-ne v0, v5, :cond_a

    .line 1606
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/PopupWindow;->mPopupHeight:I

    move/from16 p7, v0

    .line 1612
    :cond_5
    :goto_4
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v16, v0

    .line 1613
    .local v16, "x":I
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v17, v0

    .line 1615
    .local v17, "y":I
    if-eqz p2, :cond_b

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p8

    .line 1616
    invoke-direct/range {v5 .. v10}, Llenovo/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Llenovo/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 1622
    :goto_5
    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v0, v16

    if-ne v0, v5, :cond_6

    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v0, v17

    if-eq v0, v5, :cond_c

    :cond_6
    const/4 v13, 0x1

    :goto_6
    move-object/from16 v8, p0

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-virtual/range {v8 .. v13}, Llenovo/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_0

    .line 1586
    .end local v7    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v14    # "needsUpdate":Z
    .end local v16    # "x":I
    .end local v17    # "y":I
    :cond_7
    const/4 v14, 0x0

    goto :goto_1

    .line 1590
    .restart local v14    # "needsUpdate":Z
    :cond_8
    if-eqz v14, :cond_4

    .line 1592
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/widget/PopupWindow;->mAnchorXoff:I

    .line 1593
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/widget/PopupWindow;->mAnchorYoff:I

    .line 1594
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/widget/PopupWindow;->mAnchoredGravity:I

    goto :goto_2

    .line 1603
    .restart local v7    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_9
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/widget/PopupWindow;->mPopupWidth:I

    goto :goto_3

    .line 1608
    :cond_a
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/widget/PopupWindow;->mPopupHeight:I

    goto :goto_4

    .line 1618
    .restart local v16    # "x":I
    .restart local v17    # "y":I
    :cond_b
    move-object/from16 v0, p0

    iget v8, v0, Llenovo/widget/PopupWindow;->mAnchorXoff:I

    move-object/from16 v0, p0

    iget v9, v0, Llenovo/widget/PopupWindow;->mAnchorYoff:I

    move-object/from16 v0, p0

    iget v10, v0, Llenovo/widget/PopupWindow;->mAnchoredGravity:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Llenovo/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Llenovo/widget/PopupWindow;->updateAboveAnchor(Z)V

    goto :goto_5

    .line 1622
    :cond_c
    const/4 v13, 0x0

    goto :goto_6
.end method

.method private updateAboveAnchor(Z)V
    .locals 2
    .param p1, "aboveAnchor"    # Z

    .prologue
    .line 939
    iget-boolean v0, p0, Llenovo/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    .line 940
    iput-boolean p1, p0, Llenovo/widget/PopupWindow;->mAboveAnchor:Z

    .line 942
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 947
    iget-boolean v0, p0, Llenovo/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    .line 948
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Llenovo/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/lenovo/internal/widget/ViewUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Llenovo/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/lenovo/internal/widget/ViewUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 953
    :cond_2
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    .line 1344
    invoke-virtual {p0}, Llenovo/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1345
    const/4 v2, 0x0

    iput-boolean v2, p0, Llenovo/widget/PopupWindow;->mIsShowing:Z

    .line 1347
    invoke-direct {p0}, Llenovo/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1348
    iget-object v2, p0, Llenovo/widget/PopupWindow;->mContext:Landroid/content/Context;

    const v3, 0x7f050009

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1349
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v2, p0, Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1350
    new-instance v2, Llenovo/widget/PopupWindow$2;

    invoke-direct {v2, p0}, Llenovo/widget/PopupWindow$2;-><init>(Llenovo/widget/PopupWindow;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1377
    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 1378
    iget-object v2, p0, Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1380
    iget-object v2, p0, Llenovo/widget/PopupWindow;->mContext:Landroid/content/Context;

    const v3, 0x7f050005

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1381
    .local v1, "animation2":Landroid/view/animation/Animation;
    iget-object v2, p0, Llenovo/widget/PopupWindow;->mAlphaView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1382
    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    .line 1383
    iget-object v2, p0, Llenovo/widget/PopupWindow;->mAlphaView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1386
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v1    # "animation2":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Llenovo/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Llenovo/widget/PopupWindow;->mElevation:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 752
    iget v0, p0, Llenovo/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Llenovo/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 1276
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Llenovo/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .prologue
    .line 1291
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Llenovo/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .prologue
    const/4 v9, 0x1

    .line 1312
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1313
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1315
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mDrawingLocation:[I

    .line 1316
    .local v0, "anchorPos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1318
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1319
    .local v1, "bottomEdge":I
    if-eqz p3, :cond_0

    .line 1320
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1321
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1323
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_0
    aget v7, v0, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int v7, v1, v7

    sub-int v3, v7, p2

    .line 1324
    .local v3, "distanceToBottom":I
    aget v7, v0, v9

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int v4, v7, p2

    .line 1327
    .local v4, "distanceToTop":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1328
    .local v6, "returnedHeight":I
    iget-object v7, p0, Llenovo/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    .line 1329
    iget-object v7, p0, Llenovo/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Llenovo/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1330
    iget-object v7, p0, Llenovo/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Llenovo/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    .line 1333
    :cond_1
    return v6
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Llenovo/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 778
    iget v0, p0, Llenovo/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .prologue
    .line 705
    iget v0, p0, Llenovo/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    .prologue
    .line 971
    iget-boolean v0, p0, Llenovo/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .prologue
    .line 577
    iget-boolean v0, p0, Llenovo/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    .line 433
    iget-boolean v0, p0, Llenovo/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .prologue
    .line 658
    iget-boolean v0, p0, Llenovo/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Llenovo/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 802
    iget-boolean v0, p0, Llenovo/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 627
    iget v2, p0, Llenovo/widget/PopupWindow;->mSplitTouchEnabled:I

    if-gez v2, :cond_2

    iget-object v2, p0, Llenovo/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 628
    iget-object v2, p0, Llenovo/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 630
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 628
    goto :goto_0

    .line 630
    :cond_2
    iget v2, p0, Llenovo/widget/PopupWindow;->mSplitTouchEnabled:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Llenovo/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 616
    iput-boolean p1, p0, Llenovo/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 617
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .param p1, "animationStyle"    # I

    .prologue
    .line 376
    iput p1, p0, Llenovo/widget/PopupWindow;->mAnimationStyle:I

    .line 377
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 314
    iput-object p1, p0, Llenovo/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 315
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 605
    iput-boolean p1, p0, Llenovo/widget/PopupWindow;->mClipToScreen:Z

    .line 606
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Llenovo/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 607
    return-void

    .line 606
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 595
    iput-boolean p1, p0, Llenovo/widget/PopupWindow;->mClippingEnabled:Z

    .line 596
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 402
    invoke-virtual {p0}, Llenovo/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iput-object p1, p0, Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 408
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    iget-object v0, p0, Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Llenovo/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 412
    :cond_2
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Llenovo/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    .prologue
    .line 334
    iput p1, p0, Llenovo/widget/PopupWindow;->mElevation:F

    .line 335
    return-void
.end method

.method public setFocusable(Z)V
    .locals 0
    .param p1, "focusable"    # Z

    .prologue
    .line 453
    iput-boolean p1, p0, Llenovo/widget/PopupWindow;->mFocusable:Z

    .line 454
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 767
    iput p1, p0, Llenovo/widget/PopupWindow;->mHeight:I

    .line 768
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 359
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 479
    iput p1, p0, Llenovo/widget/PopupWindow;->mInputMethodMode:I

    .line 480
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 670
    iput-boolean p1, p0, Llenovo/widget/PopupWindow;->mLayoutInScreen:Z

    .line 671
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 686
    iput-boolean p1, p0, Llenovo/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 687
    return-void
.end method

.method public setOnDismissListener(Llenovo/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Llenovo/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 1394
    iput-object p1, p0, Llenovo/widget/PopupWindow;->mOnDismissListener:Llenovo/widget/PopupWindow$OnDismissListener;

    .line 1395
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 566
    iput-boolean p1, p0, Llenovo/widget/PopupWindow;->mOutsideTouchable:Z

    .line 567
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 493
    iput p1, p0, Llenovo/widget/PopupWindow;->mSoftInputMode:I

    .line 494
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 647
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Llenovo/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 648
    return-void

    .line 647
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 422
    iput-object p1, p0, Llenovo/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 423
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .param p1, "touchModal"    # Z

    .prologue
    .line 714
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Llenovo/widget/PopupWindow;->mNotTouchModal:Z

    .line 715
    return-void

    .line 714
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 533
    iput-boolean p1, p0, Llenovo/widget/PopupWindow;->mTouchable:Z

    .line 534
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 793
    iput p1, p0, Llenovo/widget/PopupWindow;->mWidth:I

    .line 794
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 740
    iput p1, p0, Llenovo/widget/PopupWindow;->mWidthMode:I

    .line 741
    iput p2, p0, Llenovo/widget/PopupWindow;->mHeightMode:I

    .line 742
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    .prologue
    .line 697
    iput p1, p0, Llenovo/widget/PopupWindow;->mWindowLayoutType:I

    .line 698
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 871
    invoke-virtual {p0, p1, v0, v0}, Llenovo/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 872
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 891
    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Llenovo/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 892
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    const/4 v3, 0x1

    .line 912
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Llenovo/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    .line 916
    :cond_0
    invoke-virtual {p0}, Llenovo/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 936
    :cond_1
    :goto_0
    return-void

    .line 920
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Llenovo/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    .line 922
    iput-boolean v3, p0, Llenovo/widget/PopupWindow;->mIsShowing:Z

    .line 923
    iput-boolean v3, p0, Llenovo/widget/PopupWindow;->mIsDropdown:Z

    .line 925
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Llenovo/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 926
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v2}, Llenovo/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 928
    invoke-direct/range {v0 .. v5}, Llenovo/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    invoke-direct {p0, v0}, Llenovo/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 930
    iget v0, p0, Llenovo/widget/PopupWindow;->mHeightMode:I

    if-gez v0, :cond_3

    iget v0, p0, Llenovo/widget/PopupWindow;->mHeightMode:I

    iput v0, p0, Llenovo/widget/PopupWindow;->mLastHeight:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 931
    :cond_3
    iget v0, p0, Llenovo/widget/PopupWindow;->mWidthMode:I

    if-gez v0, :cond_4

    iget v0, p0, Llenovo/widget/PopupWindow;->mWidthMode:I

    iput v0, p0, Llenovo/widget/PopupWindow;->mLastWidth:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 933
    :cond_4
    invoke-direct {p0}, Llenovo/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 935
    invoke-direct {p0, v2}, Llenovo/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 835
    invoke-virtual {p0}, Llenovo/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    invoke-direct {p0}, Llenovo/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 841
    const/4 v1, 0x1

    iput-boolean v1, p0, Llenovo/widget/PopupWindow;->mIsShowing:Z

    .line 842
    const/4 v1, 0x0

    iput-boolean v1, p0, Llenovo/widget/PopupWindow;->mIsDropdown:Z

    .line 844
    invoke-direct {p0, p1}, Llenovo/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 845
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Llenovo/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 847
    invoke-direct {p0, v0}, Llenovo/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 848
    if-nez p2, :cond_2

    .line 849
    const p2, 0x800033

    .line 851
    :cond_2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 852
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 853
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 854
    iget v1, p0, Llenovo/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_3

    iget v1, p0, Llenovo/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Llenovo/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 855
    :cond_3
    iget v1, p0, Llenovo/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_4

    iget v1, p0, Llenovo/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Llenovo/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 856
    :cond_4
    invoke-direct {p0, v0}, Llenovo/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 820
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Llenovo/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 821
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 1405
    invoke-virtual {p0}, Llenovo/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1434
    :cond_0
    :goto_0
    return-void

    .line 1409
    :cond_1
    iget-object v4, p0, Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1412
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .line 1414
    .local v3, "update":Z
    invoke-direct {p0}, Llenovo/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    .line 1415
    .local v0, "newAnim":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    .line 1416
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1417
    const/4 v3, 0x1

    .line 1420
    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Llenovo/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    .line 1421
    .local v1, "newFlags":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    .line 1422
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1423
    const/4 v3, 0x1

    .line 1426
    :cond_3
    if-eqz v3, :cond_0

    .line 1427
    invoke-direct {p0}, Llenovo/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1432
    iget-object v4, p0, Llenovo/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public update(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1445
    iget-object v0, p0, Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1447
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Llenovo/widget/PopupWindow;->update(IIIIZ)V

    .line 1448
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1462
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Llenovo/widget/PopupWindow;->update(IIIIZ)V

    .line 1463
    return-void
.end method

.method public update(IIIIZ)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    .prologue
    const/4 v7, -0x1

    .line 1479
    if-eq p3, v7, :cond_0

    .line 1480
    iput p3, p0, Llenovo/widget/PopupWindow;->mLastWidth:I

    .line 1481
    invoke-virtual {p0, p3}, Llenovo/widget/PopupWindow;->setWidth(I)V

    .line 1484
    :cond_0
    if-eq p4, v7, :cond_1

    .line 1485
    iput p4, p0, Llenovo/widget/PopupWindow;->mLastHeight:I

    .line 1486
    invoke-virtual {p0, p4}, Llenovo/widget/PopupWindow;->setHeight(I)V

    .line 1489
    :cond_1
    invoke-virtual {p0}, Llenovo/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v6, :cond_3

    .line 1539
    :cond_2
    :goto_0
    return-void

    .line 1493
    :cond_3
    iget-object v6, p0, Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 1495
    .local v4, "p":Landroid/view/WindowManager$LayoutParams;
    move v5, p5

    .line 1497
    .local v5, "update":Z
    iget v6, p0, Llenovo/widget/PopupWindow;->mWidthMode:I

    if-gez v6, :cond_8

    iget v1, p0, Llenovo/widget/PopupWindow;->mWidthMode:I

    .line 1498
    .local v1, "finalWidth":I
    :goto_1
    if-eq p3, v7, :cond_4

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v6, v1, :cond_4

    .line 1499
    iput v1, p0, Llenovo/widget/PopupWindow;->mLastWidth:I

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1500
    const/4 v5, 0x1

    .line 1503
    :cond_4
    iget v6, p0, Llenovo/widget/PopupWindow;->mHeightMode:I

    if-gez v6, :cond_9

    iget v0, p0, Llenovo/widget/PopupWindow;->mHeightMode:I

    .line 1504
    .local v0, "finalHeight":I
    :goto_2
    if-eq p4, v7, :cond_5

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v6, v0, :cond_5

    .line 1505
    iput v0, p0, Llenovo/widget/PopupWindow;->mLastHeight:I

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1506
    const/4 v5, 0x1

    .line 1519
    :cond_5
    invoke-direct {p0}, Llenovo/widget/PopupWindow;->computeAnimationResource()I

    move-result v2

    .line 1520
    .local v2, "newAnim":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v6, :cond_6

    .line 1521
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1522
    const/4 v5, 0x1

    .line 1525
    :cond_6
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, Llenovo/widget/PopupWindow;->computeFlags(I)I

    move-result v3

    .line 1526
    .local v3, "newFlags":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v6, :cond_7

    .line 1527
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1528
    const/4 v5, 0x1

    .line 1531
    :cond_7
    if-eqz v5, :cond_2

    .line 1532
    invoke-direct {p0}, Llenovo/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1537
    iget-object v6, p0, Llenovo/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v6, v7, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1497
    .end local v0    # "finalHeight":I
    .end local v1    # "finalWidth":I
    .end local v2    # "newAnim":I
    .end local v3    # "newFlags":I
    :cond_8
    iget v1, p0, Llenovo/widget/PopupWindow;->mLastWidth:I

    goto :goto_1

    .line 1503
    .restart local v1    # "finalWidth":I
    :cond_9
    iget v0, p0, Llenovo/widget/PopupWindow;->mLastHeight:I

    goto :goto_2
.end method

.method public update(Landroid/view/View;II)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 1551
    const/4 v5, 0x1

    iget v8, p0, Llenovo/widget/PopupWindow;->mAnchoredGravity:I

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Llenovo/widget/PopupWindow;->update(Landroid/view/View;ZIIZIII)V

    .line 1552
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 1571
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Llenovo/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_0

    .line 1573
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    .line 1575
    :cond_0
    iget v8, p0, Llenovo/widget/PopupWindow;->mAnchoredGravity:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Llenovo/widget/PopupWindow;->update(Landroid/view/View;ZIIZIII)V

    .line 1576
    return-void
.end method
