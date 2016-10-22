.class public Lcom/lenovo/component/slidemenu/LeMenuLayout;
.super Lcom/lenovo/component/slidemenu/DrawerLayout;
.source "LeMenuLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemWithIdClickListener;,
        Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;
    }
.end annotation


# static fields
.field public static final FLAG_MENU_CUSTOM:I = 0x40

.field public static final FLAG_MENU_GRID_0:I = 0x8

.field public static final FLAG_MENU_GRID_1:I = 0x10

.field public static final FLAG_MENU_LIST:I = 0x4

.field public static final FLAG_MENU_LOGIN:I = 0x1

.field public static final FLAG_MENU_SIMPLE_LOGIN:I = 0x2

.field public static final FLAG_MENU_STATUS_BAR_UNITY:I = 0x80

.field public static final FLAG_MENU_TITLE:I = 0x20

.field private static final FLAG_NO_MENU:I = 0x0

.field private static final INDEX_CONTENT_VIEW:I = 0x0

.field private static final INDEX_MENU_VIEW:I = 0x1


# instance fields
.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mFlagBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGrid0ItemClickListener:Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;

.field private mGrid1ItemClickListener:Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;

.field private mGridViewAbove:Landroid/widget/GridView;

.field private mGridViewBelow:Landroid/widget/GridView;

.field private mListItemClickListener:Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;

.field private mListItemWithIdClickListener:Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemWithIdClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mLoginPopupMenu:Landroid/widget/PopupMenu;

.field private mLoginView:Landroid/widget/RelativeLayout;

.field private mMenuFlag:I

.field private mMenuView:Landroid/view/View;

.field private mStatusBarUnityView:Landroid/view/View;

.field private mTitlePopupMenu:Landroid/widget/PopupMenu;

.field private mTitleView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/lenovo/component/slidemenu/DrawerLayout;-><init>(Landroid/content/Context;)V

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuFlag:I

    .line 139
    const v0, 0x9020086

    const v1, 0x800003

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->setDrawerShadow(II)V

    .line 140
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/lenovo/component/slidemenu/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuFlag:I

    .line 145
    const v0, 0x9020086

    const v1, 0x800003

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->setDrawerShadow(II)V

    .line 146
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/component/slidemenu/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuFlag:I

    .line 151
    const v0, 0x9020086

    const v1, 0x800003

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->setDrawerShadow(II)V

    .line 152
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/component/slidemenu/LeMenuLayout;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/slidemenu/LeMenuLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitleView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/component/slidemenu/LeMenuLayout;)Landroid/widget/PopupMenu;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/slidemenu/LeMenuLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitlePopupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/component/slidemenu/LeMenuLayout;)Landroid/widget/PopupMenu;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/slidemenu/LeMenuLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginPopupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/component/slidemenu/LeMenuLayout;)Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/slidemenu/LeMenuLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListItemClickListener:Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/component/slidemenu/LeMenuLayout;)Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemWithIdClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/slidemenu/LeMenuLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListItemWithIdClickListener:Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemWithIdClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/component/slidemenu/LeMenuLayout;)Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/slidemenu/LeMenuLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mGrid0ItemClickListener:Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/component/slidemenu/LeMenuLayout;)Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/slidemenu/LeMenuLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mGrid1ItemClickListener:Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;

    return-object v0
.end method

.method private addViewToMenu(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "menuFlagBufferCount"    # I

    .prologue
    .line 392
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->getDefaultMenuLayoutParams()Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuView:Landroid/view/View;

    .line 400
    :goto_0
    return-void

    .line 396
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 398
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuView:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private getDefaultMenuLayoutParams()Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    .locals 3

    .prologue
    .line 1008
    new-instance v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x9080076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;-><init>(II)V

    .line 1010
    .local v0, "result":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    const v1, 0x800003

    iput v1, v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->gravity:I

    .line 1011
    return-object v0
.end method

.method private getDrawerMenuWidth()I
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x9080076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getLoginMenuLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 408
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x9080077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 409
    .local v0, "loginMenuHeightInPixel":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method private getRippleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 636
    const/4 v3, 0x1

    new-array v0, v3, [I

    const v3, 0x101030e

    aput v3, v0, v4

    .line 637
    .local v0, "attrs":[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 638
    .local v2, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 639
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 641
    return-object v1
.end method

.method private getSimpleLoginMenuLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 413
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x908008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 414
    .local v0, "loginMenuHeightInPixel":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method private getStatusBarHeight()I
    .locals 7

    .prologue
    .line 376
    const/4 v4, 0x0

    .line 379
    .local v4, "result":I
    :try_start_0
    const-string v6, "com.android.internal.R$dimen"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 380
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 381
    .local v3, "obj":Ljava/lang/Object;
    const-string/jumbo v6, "status_bar_height"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 382
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 383
    .local v5, "x":I
    iget-object v6, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 388
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v5    # "x":I
    :goto_0
    return v4

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getTitleMenuLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 403
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x9080087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 404
    .local v0, "titleMenuHeightInPixel":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method private initGridMenuAbove(I)V
    .locals 3
    .param p1, "menuFlagBufferCount"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mGridViewAbove:Landroid/widget/GridView;

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x904002f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mGridViewAbove:Landroid/widget/GridView;

    .line 329
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mGridViewAbove:Landroid/widget/GridView;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->addViewToMenu(Landroid/view/View;I)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mGridViewAbove:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 333
    return-void
.end method

.method private initGridMenuBelow(I)V
    .locals 3
    .param p1, "menuFlagBufferCount"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mGridViewBelow:Landroid/widget/GridView;

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x904002f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mGridViewBelow:Landroid/widget/GridView;

    .line 339
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mGridViewBelow:Landroid/widget/GridView;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->addViewToMenu(Landroid/view/View;I)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mGridViewAbove:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 343
    return-void
.end method

.method private initLinearMenu()V
    .locals 3

    .prologue
    .line 265
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x9070067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 268
    .local v0, "backgroundColor":I
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuView:Landroid/view/View;

    .line 269
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 273
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuView:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 275
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuView:Landroid/view/View;

    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->getDefaultMenuLayoutParams()Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    .end local v0    # "backgroundColor":I
    :cond_0
    return-void
.end method

.method private initListMenu(I)V
    .locals 5
    .param p1, "menuFlagBufferCount"    # I

    .prologue
    const/4 v4, 0x0

    .line 308
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    if-nez v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x9070067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 310
    .local v0, "backgroundColor":I
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x908007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 312
    .local v1, "paddingTop":I
    new-instance v2, Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    .line 313
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 314
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4, v1, v4, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 315
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 316
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 317
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 319
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v2, p1}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->addViewToMenu(Landroid/view/View;I)V

    .line 322
    .end local v0    # "backgroundColor":I
    .end local v1    # "paddingTop":I
    :cond_0
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 323
    return-void
.end method

.method private initLoginMenu()V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x9040031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginView:Landroid/widget/RelativeLayout;

    .line 286
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 287
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginView:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->getLoginMenuLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 291
    return-void
.end method

.method private initSimpleLoginMenu()V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x9040032

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginView:Landroid/widget/RelativeLayout;

    .line 300
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 301
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginView:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->getSimpleLoginMenuLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 305
    return-void
.end method

.method private initStatusBarUnityMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 360
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mStatusBarUnityView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 361
    new-instance v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->getDrawerMenuWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->getStatusBarHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;-><init>(II)V

    .line 363
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mStatusBarUnityView:Landroid/view/View;

    .line 364
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mStatusBarUnityView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuView:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mStatusBarUnityView:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 368
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mStatusBarUnityView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 369
    return-void
.end method

.method private initTitleMenu()V
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitleView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x9040033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitleView:Landroid/widget/RelativeLayout;

    .line 352
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 353
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitleView:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->getTitleMenuLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitleView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 357
    return-void
.end method

.method private isCustomMenuFlagInBuffer()Z
    .locals 4

    .prologue
    .line 244
    const/4 v2, 0x0

    .line 246
    .local v2, "result":Z
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mFlagBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 247
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 248
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mFlagBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    if-lez v3, :cond_1

    .line 249
    const/4 v2, 0x1

    .line 254
    :cond_0
    return v2

    .line 247
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isUseCustomMenu()Z
    .locals 1

    .prologue
    .line 1031
    iget v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuFlag:I

    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUseGridMenuAbove()Z
    .locals 1

    .prologue
    .line 1023
    iget v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuFlag:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUseGridMenuBelow()Z
    .locals 1

    .prologue
    .line 1027
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isUseGridMenuAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuFlag:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUseListMenu()Z
    .locals 1

    .prologue
    .line 1019
    iget v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuFlag:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUseLoginMenu()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1035
    iget v4, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuFlag:I

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_0

    move v0, v2

    .line 1036
    .local v0, "isUseLoginMenu":Z
    :goto_0
    iget v4, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuFlag:I

    and-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_1

    move v1, v2

    .line 1037
    .local v1, "isUseSimpleLoginMenu":Z
    :goto_1
    or-int v2, v0, v1

    return v2

    .end local v0    # "isUseLoginMenu":Z
    .end local v1    # "isUseSimpleLoginMenu":Z
    :cond_0
    move v0, v3

    .line 1035
    goto :goto_0

    .restart local v0    # "isUseLoginMenu":Z
    :cond_1
    move v1, v3

    .line 1036
    goto :goto_1
.end method

.method private isUseStatusBarUnityMenu()Z
    .locals 1

    .prologue
    .line 1041
    iget v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuFlag:I

    and-int/lit16 v0, v0, 0x80

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUseTitleMenu()Z
    .locals 1

    .prologue
    .line 1015
    iget v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuFlag:I

    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupLoginAccount(Lcom/lenovo/component/slidemenu/LeLoginMenu;)V
    .locals 3
    .param p1, "data"    # Lcom/lenovo/component/slidemenu/LeLoginMenu;

    .prologue
    .line 564
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginView:Landroid/widget/RelativeLayout;

    const v2, 0x90c003f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 565
    .local v0, "accountVeiw":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/lenovo/component/slidemenu/LeLoginMenu;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    return-void
.end method

.method private setupLoginAvatar(Lcom/lenovo/component/slidemenu/LeLoginMenu;)V
    .locals 4
    .param p1, "data"    # Lcom/lenovo/component/slidemenu/LeLoginMenu;

    .prologue
    .line 552
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginView:Landroid/widget/RelativeLayout;

    const v3, 0x90c0040

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 553
    .local v1, "avatarView":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/lenovo/component/slidemenu/LeLoginMenu;->getAvatarIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 555
    .local v0, "avatarIcon":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 556
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 561
    :goto_0
    return-void

    .line 558
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 559
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setupLoginImageButton(Lcom/lenovo/component/slidemenu/LeLoginMenu;)V
    .locals 1
    .param p1, "data"    # Lcom/lenovo/component/slidemenu/LeLoginMenu;

    .prologue
    .line 579
    invoke-virtual {p1}, Lcom/lenovo/component/slidemenu/LeLoginMenu;->isUseSettingButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    invoke-direct {p0, p1}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->setupLoginSettingButton(Lcom/lenovo/component/slidemenu/LeLoginMenu;)V

    .line 584
    :goto_0
    return-void

    .line 582
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->setupLoginPopupMenu(Lcom/lenovo/component/slidemenu/LeLoginMenu;)V

    goto :goto_0
.end method

.method private setupLoginMenuClickListener(Lcom/lenovo/component/slidemenu/LeLoginMenu;)V
    .locals 3
    .param p1, "data"    # Lcom/lenovo/component/slidemenu/LeLoginMenu;

    .prologue
    .line 569
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginView:Landroid/widget/RelativeLayout;

    const v2, 0x90c003d    # 1.6851999E-33f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 570
    .local v0, "loginLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {p1}, Lcom/lenovo/component/slidemenu/LeLoginMenu;->getAccountClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    invoke-virtual {p1}, Lcom/lenovo/component/slidemenu/LeLoginMenu;->getAccountClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 572
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 576
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->getRippleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setupLoginPopupMenu(Lcom/lenovo/component/slidemenu/LeLoginMenu;)V
    .locals 9
    .param p1, "data"    # Lcom/lenovo/component/slidemenu/LeLoginMenu;

    .prologue
    const v8, 0x90c003e    # 1.6852E-33f

    .line 598
    iget-object v4, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 600
    .local v0, "button":Landroid/widget/ImageButton;
    invoke-virtual {p1}, Lcom/lenovo/component/slidemenu/LeLoginMenu;->getPopupMenuData()[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 601
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 631
    :goto_0
    return-void

    .line 603
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 604
    const v4, 0x902008a

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 605
    iget-object v4, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginPopupMenu:Landroid/widget/PopupMenu;

    if-nez v4, :cond_1

    .line 606
    new-instance v4, Landroid/widget/PopupMenu;

    iget-object v5, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v4, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginPopupMenu:Landroid/widget/PopupMenu;

    .line 610
    :cond_1
    iget-object v4, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 611
    .local v3, "popupMenu":Landroid/view/Menu;
    invoke-interface {v3}, Landroid/view/Menu;->clear()V

    .line 612
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Lcom/lenovo/component/slidemenu/LeLoginMenu;->getPopupMenuData()[Ljava/lang/String;

    move-result-object v4

    array-length v1, v4

    .local v1, "count":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 613
    invoke-virtual {p1}, Lcom/lenovo/component/slidemenu/LeLoginMenu;->getPopupMenuData()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 612
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 615
    :cond_2
    iget-object v4, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Lcom/lenovo/component/slidemenu/LeLoginMenu;->getmItemClickListener()Landroid/widget/PopupMenu$OnMenuItemClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 616
    iget-object v4, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginPopupMenu:Landroid/widget/PopupMenu;

    new-instance v5, Lcom/lenovo/component/slidemenu/LeMenuLayout$3;

    invoke-direct {v5, p0, v0}, Lcom/lenovo/component/slidemenu/LeMenuLayout$3;-><init>(Lcom/lenovo/component/slidemenu/LeMenuLayout;Landroid/widget/ImageButton;)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 623
    iget-object v4, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/lenovo/component/slidemenu/LeMenuLayout$4;

    invoke-direct {v5, p0, v0}, Lcom/lenovo/component/slidemenu/LeMenuLayout$4;-><init>(Lcom/lenovo/component/slidemenu/LeMenuLayout;Landroid/widget/ImageButton;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setupLoginSettingButton(Lcom/lenovo/component/slidemenu/LeLoginMenu;)V
    .locals 3
    .param p1, "data"    # Lcom/lenovo/component/slidemenu/LeLoginMenu;

    .prologue
    .line 587
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginView:Landroid/widget/RelativeLayout;

    const v2, 0x90c003e    # 1.6852E-33f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 588
    .local v0, "button":Landroid/widget/ImageButton;
    invoke-virtual {p1}, Lcom/lenovo/component/slidemenu/LeLoginMenu;->getSettingClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 589
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 595
    :goto_0
    return-void

    .line 591
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 592
    const v1, 0x9020085

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 593
    invoke-virtual {p1}, Lcom/lenovo/component/slidemenu/LeLoginMenu;->getSettingClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setupTitlePopupMenu(Lcom/lenovo/component/slidemenu/LeTitleMenu;)V
    .locals 8
    .param p1, "data"    # Lcom/lenovo/component/slidemenu/LeTitleMenu;

    .prologue
    const v7, 0x90c0041

    .line 450
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitleView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const v4, 0x902008a

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 452
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitlePopupMenu:Landroid/widget/PopupMenu;

    if-nez v3, :cond_0

    .line 453
    new-instance v3, Landroid/widget/PopupMenu;

    iget-object v4, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitleView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v3, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitlePopupMenu:Landroid/widget/PopupMenu;

    .line 456
    :cond_0
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitlePopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 457
    .local v2, "popupMenu":Landroid/view/Menu;
    invoke-interface {v2}, Landroid/view/Menu;->clear()V

    .line 458
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/lenovo/component/slidemenu/LeTitleMenu;->getPopupMenuData()[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 459
    invoke-virtual {p1}, Lcom/lenovo/component/slidemenu/LeTitleMenu;->getPopupMenuData()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 458
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    :cond_1
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitlePopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Lcom/lenovo/component/slidemenu/LeTitleMenu;->getmItemClickListener()Landroid/widget/PopupMenu$OnMenuItemClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 462
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitlePopupMenu:Landroid/widget/PopupMenu;

    new-instance v4, Lcom/lenovo/component/slidemenu/LeMenuLayout$1;

    invoke-direct {v4, p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout$1;-><init>(Lcom/lenovo/component/slidemenu/LeMenuLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 469
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitleView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/lenovo/component/slidemenu/LeMenuLayout$2;

    invoke-direct {v4, p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout$2;-><init>(Lcom/lenovo/component/slidemenu/LeMenuLayout;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    return-void
.end method

.method private setupTitleSettingMenu(Lcom/lenovo/component/slidemenu/LeTitleMenu;)V
    .locals 3
    .param p1, "data"    # Lcom/lenovo/component/slidemenu/LeTitleMenu;

    .prologue
    .line 444
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitleView:Landroid/widget/RelativeLayout;

    const v2, 0x90c0041

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 445
    .local v0, "button":Landroid/widget/ImageButton;
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x9020085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 446
    invoke-virtual {p1}, Lcom/lenovo/component/slidemenu/LeTitleMenu;->getSettingClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    return-void
.end method


# virtual methods
.method public addMenuFlag(I)Lcom/lenovo/component/slidemenu/LeMenuLayout;
    .locals 3
    .param p1, "menuFlag"    # I

    .prologue
    .line 168
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mFlagBuffer:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mFlagBuffer:Ljava/util/ArrayList;

    .line 173
    :cond_0
    and-int/lit8 v1, p1, 0x40

    if-lez v1, :cond_1

    .line 179
    and-int/lit8 v0, p1, -0x5

    .line 184
    .local v0, "menuToAdd":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mFlagBuffer:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    return-object p0

    .line 181
    .end local v0    # "menuToAdd":I
    :cond_1
    move v0, p1

    .restart local v0    # "menuToAdd":I
    goto :goto_0
.end method

.method public closeDrawer()V
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->closeDrawer(Landroid/view/View;)V

    .line 977
    :cond_0
    return-void
.end method

.method public commitMenuFlag()V
    .locals 4

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isCustomMenuFlagInBuffer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mFlagBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 199
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mFlagBuffer:Ljava/util/ArrayList;

    const/16 v3, 0x40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mFlagBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 205
    .local v0, "count":I
    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 206
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->initLinearMenu()V

    .line 209
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 210
    iget v3, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuFlag:I

    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mFlagBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int/2addr v2, v3

    iput v2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuFlag:I

    .line 212
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mFlagBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 209
    :goto_1
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :sswitch_1
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->initLoginMenu()V

    goto :goto_1

    .line 220
    :sswitch_2
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->initSimpleLoginMenu()V

    goto :goto_1

    .line 223
    :sswitch_3
    invoke-direct {p0, v0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->initListMenu(I)V

    goto :goto_1

    .line 226
    :sswitch_4
    invoke-direct {p0, v0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->initGridMenuAbove(I)V

    goto :goto_1

    .line 229
    :sswitch_5
    invoke-direct {p0, v0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->initGridMenuBelow(I)V

    goto :goto_1

    .line 232
    :sswitch_6
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->initTitleMenu()V

    goto :goto_1

    .line 235
    :sswitch_7
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->initStatusBarUnityMenu()V

    goto :goto_1

    .line 241
    :cond_2
    return-void

    .line 212
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0x10 -> :sswitch_5
        0x20 -> :sswitch_6
        0x40 -> :sswitch_0
        0x80 -> :sswitch_7
    .end sparse-switch
.end method

.method public disableDrawer()V
    .locals 0

    .prologue
    .line 984
    invoke-super {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->disableDrawer()V

    .line 985
    return-void
.end method

.method public disableListMenuItem(ILcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "newItemData"    # Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

    .prologue
    .line 702
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isUseListMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    if-eqz p2, :cond_0

    .line 704
    invoke-virtual {p0, p2, p1}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->updateMenuData(Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;I)V

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;

    invoke-virtual {v0, p1}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->setListMenuItemDisabled(I)V

    .line 709
    :cond_1
    return-void
.end method

.method public disableListMenuItem([I[Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;)V
    .locals 1
    .param p1, "indexes"    # [I
    .param p2, "newItemData"    # [Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

    .prologue
    .line 723
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isUseListMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    if-eqz p2, :cond_0

    .line 725
    invoke-virtual {p0, p2, p1}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->updateMenuData([Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;[I)V

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;

    invoke-virtual {v0, p1}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->setListMenuItemDisabled([I)V

    .line 730
    :cond_1
    return-void
.end method

.method public enableDrawer()V
    .locals 0

    .prologue
    .line 992
    invoke-super {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->enableDrawer()V

    .line 993
    return-void
.end method

.method public enableListMenuItem(ILcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "newItemData"    # Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isUseListMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    if-eqz p2, :cond_0

    .line 746
    invoke-virtual {p0, p2, p1}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->updateMenuData(Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;I)V

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;

    invoke-virtual {v0, p1}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->setListMenuItemEnabled(I)V

    .line 751
    :cond_1
    return-void
.end method

.method public enableListMenuItem([I[Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;)V
    .locals 1
    .param p1, "indexes"    # [I
    .param p2, "newItemData"    # [Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

    .prologue
    .line 765
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isUseListMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 766
    if-eqz p2, :cond_0

    .line 767
    invoke-virtual {p0, p2, p1}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->updateMenuData([Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;[I)V

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;

    invoke-virtual {v0, p1}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->setListMenuItemEnabled([I)V

    .line 772
    :cond_1
    return-void
.end method

.method public isDrawerOpen()Z
    .locals 2

    .prologue
    .line 952
    const/4 v0, 0x0

    .line 954
    .local v0, "result":Z
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 955
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    .line 958
    :cond_0
    return v0
.end method

.method public openDrawer()V
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->openDrawer(Landroid/view/View;)V

    .line 968
    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 937
    new-instance v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;-><init>(II)V

    .line 941
    .local v0, "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 943
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContentView:Landroid/view/View;

    .line 944
    return-void
.end method

.method public setCustomMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 905
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isUseCustomMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->getDefaultMenuLayoutParams()Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 908
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuView:Landroid/view/View;

    .line 910
    :cond_0
    return-void
.end method

.method public setCustomMenu(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "menuWidthInPixel"    # I

    .prologue
    .line 922
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isUseCustomMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    new-instance v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, p2, v1}, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;-><init>(II)V

    .line 924
    .local v0, "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    const v1, 0x800003

    iput v1, v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->gravity:I

    .line 925
    invoke-virtual {p0, p1, v0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 927
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mMenuView:Landroid/view/View;

    .line 929
    .end local v0    # "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setGridMenu0Data([Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;)V
    .locals 2
    .param p1, "dataset"    # [Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isUseGridMenuAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mGridViewAbove:Landroid/widget/GridView;

    new-instance v1, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;

    invoke-direct {v1, p1}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;-><init>([Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 502
    :cond_0
    return-void
.end method

.method public setGridMenu1Data([Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;)V
    .locals 2
    .param p1, "dataset"    # [Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isUseGridMenuBelow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mGridViewBelow:Landroid/widget/GridView;

    new-instance v1, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;

    invoke-direct {v1, p1}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;-><init>([Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 515
    :cond_0
    return-void
.end method

.method public setListMenuData([Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;)V
    .locals 2
    .param p1, "dataset"    # [Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isUseListMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;

    invoke-direct {v1, p1}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;-><init>([Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 489
    :cond_0
    return-void
.end method

.method public setListMenuItemFocused(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 783
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isUseListMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;

    invoke-virtual {v0, p1}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->setListMenuItemFocused(I)V

    .line 786
    :cond_0
    return-void
.end method

.method public setListMenuItemUnfocused()V
    .locals 1

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isUseListMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;

    invoke-virtual {v0}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->setListMenuItemUnfocused()V

    .line 795
    :cond_0
    return-void
.end method

.method public setLoginData(Lcom/lenovo/component/slidemenu/LeLoginMenu;)V
    .locals 4
    .param p1, "data"    # Lcom/lenovo/component/slidemenu/LeLoginMenu;

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isUseLoginMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    invoke-virtual {p1}, Lcom/lenovo/component/slidemenu/LeLoginMenu;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 527
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 528
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x9070064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 532
    :goto_0
    invoke-direct {p0, p1}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->setupLoginAvatar(Lcom/lenovo/component/slidemenu/LeLoginMenu;)V

    .line 533
    invoke-direct {p0, p1}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->setupLoginAccount(Lcom/lenovo/component/slidemenu/LeLoginMenu;)V

    .line 534
    invoke-direct {p0, p1}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->setupLoginImageButton(Lcom/lenovo/component/slidemenu/LeLoginMenu;)V

    .line 535
    invoke-direct {p0, p1}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->setupLoginMenuClickListener(Lcom/lenovo/component/slidemenu/LeLoginMenu;)V

    .line 537
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void

    .line 530
    .restart local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setOnGrid0ItemClickListener(Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;

    .prologue
    .line 859
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isUseGridMenuAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mGrid0ItemClickListener:Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;

    .line 862
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mGridViewAbove:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mGridViewAbove:Landroid/widget/GridView;

    new-instance v1, Lcom/lenovo/component/slidemenu/LeMenuLayout$7;

    invoke-direct {v1, p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout$7;-><init>(Lcom/lenovo/component/slidemenu/LeMenuLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 872
    :cond_0
    return-void
.end method

.method public setOnGrid1ItemClickListener(Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;

    .prologue
    .line 882
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isUseGridMenuBelow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mGrid1ItemClickListener:Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;

    .line 885
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mGridViewBelow:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mGridViewBelow:Landroid/widget/GridView;

    new-instance v1, Lcom/lenovo/component/slidemenu/LeMenuLayout$8;

    invoke-direct {v1, p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout$8;-><init>(Lcom/lenovo/component/slidemenu/LeMenuLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 895
    :cond_0
    return-void
.end method

.method public setOnListItemClickListener(Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;

    .prologue
    .line 808
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isUseListMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListItemClickListener:Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;

    .line 810
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListItemWithIdClickListener:Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemWithIdClickListener;

    .line 812
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/component/slidemenu/LeMenuLayout$5;

    invoke-direct {v1, p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout$5;-><init>(Lcom/lenovo/component/slidemenu/LeMenuLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 821
    :cond_0
    return-void
.end method

.method public setOnListItemWithIdClickListener(Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemWithIdClickListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemWithIdClickListener;

    .prologue
    .line 836
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isUseListMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListItemWithIdClickListener:Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemWithIdClickListener;

    .line 838
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListItemClickListener:Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;

    .line 840
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/component/slidemenu/LeMenuLayout$6;

    invoke-direct {v1, p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout$6;-><init>(Lcom/lenovo/component/slidemenu/LeMenuLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 849
    :cond_0
    return-void
.end method

.method public setStatusBarUnityMenuColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isUseStatusBarUnityMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mStatusBarUnityView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 549
    :cond_0
    return-void
.end method

.method public setTitleMenuData(Lcom/lenovo/component/slidemenu/LeTitleMenu;)V
    .locals 5
    .param p1, "data"    # Lcom/lenovo/component/slidemenu/LeTitleMenu;

    .prologue
    const v4, 0x90c0041

    const/4 v3, 0x0

    .line 418
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isUseTitleMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitleView:Landroid/widget/RelativeLayout;

    const v1, 0x90c0042

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lenovo/component/slidemenu/LeTitleMenu;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    invoke-virtual {p1}, Lcom/lenovo/component/slidemenu/LeTitleMenu;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitleView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 423
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitleView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x907006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 429
    :goto_0
    invoke-virtual {p1}, Lcom/lenovo/component/slidemenu/LeTitleMenu;->isUseButton()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 430
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitleView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 432
    invoke-virtual {p1}, Lcom/lenovo/component/slidemenu/LeTitleMenu;->isUseSettingButton()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    invoke-direct {p0, p1}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->setupTitleSettingMenu(Lcom/lenovo/component/slidemenu/LeTitleMenu;)V

    .line 441
    :cond_0
    :goto_1
    return-void

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitleView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 426
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitleView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Lcom/lenovo/component/slidemenu/LeTitleMenu;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 435
    :cond_2
    invoke-direct {p0, p1}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->setupTitlePopupMenu(Lcom/lenovo/component/slidemenu/LeTitleMenu;)V

    goto :goto_1

    .line 438
    :cond_3
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitleView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateMenuData(Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;I)V
    .locals 2
    .param p1, "itemData"    # Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;
    .param p2, "position"    # I

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isUseListMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;

    .line 669
    .local v0, "adapter":Lcom/lenovo/component/slidemenu/LeMenuListAdapter;
    invoke-virtual {v0, p1, p2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->updateDataset(Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;I)V

    .line 672
    .end local v0    # "adapter":Lcom/lenovo/component/slidemenu/LeMenuListAdapter;
    :cond_0
    return-void
.end method

.method public updateMenuData([Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;)V
    .locals 2
    .param p1, "dataset"    # [Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isUseListMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;

    .line 653
    .local v0, "adapter":Lcom/lenovo/component/slidemenu/LeMenuListAdapter;
    invoke-virtual {v0, p1}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->updateDataset([Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;)V

    .line 656
    .end local v0    # "adapter":Lcom/lenovo/component/slidemenu/LeMenuListAdapter;
    :cond_0
    return-void
.end method

.method public updateMenuData([Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;[I)V
    .locals 2
    .param p1, "dataset"    # [Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;
    .param p2, "positions"    # [I

    .prologue
    .line 682
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->isUseListMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 684
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;

    .line 685
    .local v0, "adapter":Lcom/lenovo/component/slidemenu/LeMenuListAdapter;
    invoke-virtual {v0, p1, p2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->updateDataset([Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;[I)V

    .line 688
    .end local v0    # "adapter":Lcom/lenovo/component/slidemenu/LeMenuListAdapter;
    :cond_0
    return-void
.end method
