.class public Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Lcom/lenovo/internal/widget/DecorToolbar;


# static fields
.field private static final AFFECTS_LOGO_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ToolbarWidgetWrapper"


# instance fields
.field private mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

.field private mCustomView:Landroid/view/View;

.field private mDefaultNavigationContentDescription:I

.field private mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayOpts:I

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mMenuPrepared:Z

.field private mNavIcon:Landroid/graphics/drawable/Drawable;

.field private mNavigationMode:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTabView:Landroid/view/View;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleSet:Z

.field private mToolbar:Llenovo/widget/Toolbar;

.field private mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;


# direct methods
.method public constructor <init>(Llenovo/widget/Toolbar;Z)V
    .locals 1
    .param p1, "toolbar"    # Llenovo/widget/Toolbar;
    .param p2, "style"    # Z

    .prologue
    .line 92
    const v0, 0x7f0c0002

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;-><init>(Llenovo/widget/Toolbar;ZI)V

    .line 93
    return-void
.end method

.method public constructor <init>(Llenovo/widget/Toolbar;ZI)V
    .locals 22
    .param p1, "toolbar"    # Llenovo/widget/Toolbar;
    .param p2, "style"    # Z
    .param p3, "defaultNavigationContentDescription"    # I

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 88
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 97
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    .line 98
    invoke-virtual/range {p1 .. p1}, Llenovo/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 99
    invoke-virtual/range {p1 .. p1}, Llenovo/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    const/16 v17, 0x1

    :goto_0
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 102
    if-eqz p2, :cond_d

    .line 103
    invoke-virtual/range {p1 .. p1}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    sget-object v19, Lcom/lenovo/component/appcompat/R$styleable;->ActionBar:[I

    const v20, 0x10102ce

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v21}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 105
    .local v3, "a":Landroid/content/res/TypedArray;
    const/16 v17, 0xf

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 106
    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 107
    .local v15, "title":Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 108
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    :cond_0
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 112
    .local v13, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 113
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 116
    :cond_1
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 117
    .local v9, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_2

    .line 118
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :cond_2
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 122
    .local v8, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_3

    .line 123
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_3
    const/16 v17, 0xf

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 127
    .local v11, "navIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_4

    .line 128
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 131
    :cond_4
    const/16 v17, 0xa

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 133
    const/16 v17, 0xc

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 135
    .local v6, "customNavId":I
    if-eqz v6, :cond_5

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v6, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setCustomView(Landroid/view/View;)V

    .line 138
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 141
    :cond_5
    const/16 v17, 0x6

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v7

    .line 142
    .local v7, "height":I
    if-lez v7, :cond_6

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Llenovo/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 144
    .local v10, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v7, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Llenovo/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    .end local v10    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Llenovo/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 153
    .local v12, "resources":Landroid/content/res/Resources;
    const v17, 0x7f080017

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 154
    .local v5, "contentInsetStart":I
    const v17, 0x7f080018

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 155
    .local v4, "contentInsetEnd":I
    if-gez v5, :cond_7

    if-ltz v4, :cond_8

    .line 156
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Llenovo/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 160
    :cond_8
    const/16 v17, 0xd

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 161
    .local v16, "titleTextStyle":I
    if-eqz v16, :cond_9

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Llenovo/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 165
    :cond_9
    const/16 v17, 0xe

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 167
    .local v14, "subtitleTextStyle":I
    if-eqz v14, :cond_a

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Llenovo/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 176
    :cond_a
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 181
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "contentInsetEnd":I
    .end local v5    # "contentInsetStart":I
    .end local v6    # "customNavId":I
    .end local v7    # "height":I
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v9    # "logo":Landroid/graphics/drawable/Drawable;
    .end local v11    # "navIcon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "resources":Landroid/content/res/Resources;
    .end local v13    # "subtitle":Ljava/lang/CharSequence;
    .end local v14    # "subtitleTextStyle":I
    .end local v15    # "title":Ljava/lang/CharSequence;
    .end local v16    # "titleTextStyle":I
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setDefaultNavigationContentDescription(I)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Llenovo/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 189
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    move-object/from16 v17, v0

    new-instance v18, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$1;-><init>(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual/range {v17 .. v18}, Llenovo/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    return-void

    .line 100
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 178
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->detectDisplayOptions()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)Llenovo/widget/Toolbar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)Lcom/lenovo/internal/app/WindowCallback;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    return v0
.end method

.method private detectDisplayOptions()I
    .locals 2

    .prologue
    .line 230
    const/16 v0, 0xb

    .line 232
    .local v0, "opts":I
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v1}, Llenovo/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 233
    or-int/lit8 v0, v0, 0x4

    .line 234
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v1}, Llenovo/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 236
    :cond_0
    return v0
.end method

.method private ensureSpinner()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 555
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_0

    .line 556
    new-instance v1, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x10102d7

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    .line 557
    new-instance v0, Llenovo/widget/Toolbar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v5, v5, v1}, Llenovo/widget/Toolbar$LayoutParams;-><init>(III)V

    .line 559
    .local v0, "lp":Llenovo/widget/Toolbar$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    .end local v0    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private setTitleInt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 290
    iget v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0, p1}, Llenovo/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 293
    :cond_0
    return-void
.end method

.method private updateHomeAccessibility()V
    .locals 2

    .prologue
    .line 660
    iget v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {v0, v1}, Llenovo/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Llenovo/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNavigationIcon()V
    .locals 2

    .prologue
    .line 670
    iget v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 671
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Llenovo/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 673
    :cond_0
    return-void

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateToolbarLogo()V
    .locals 2

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 374
    iget v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 375
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 380
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v1, v0}, Llenovo/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 381
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 608
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$2;

    invoke-direct {v1, p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$2;-><init>(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    if-nez p1, :cond_0

    .line 625
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$3;

    invoke-direct {v1, p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$3;-><init>(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public canSplit()Z
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public collapseActionView()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->collapseActionView()V

    .line 262
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->dismissPopupMenus()V

    .line 426
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    return v0
.end method

.method public getDropdownItemCount()I
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    return-object v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->hasExpandedActionView()Z

    move-result v0

    return v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 2

    .prologue
    .line 315
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void
.end method

.method public initProgress()V
    .locals 2

    .prologue
    .line 310
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public isSplit()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 682
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0, p1}, Llenovo/widget/Toolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 683
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 677
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0, p1}, Llenovo/widget/Toolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 678
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 1
    .param p1, "collapsible"    # Z

    .prologue
    .line 500
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0, p1}, Llenovo/widget/Toolbar;->setCollapsible(Z)V

    .line 501
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 592
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Llenovo/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 595
    :cond_0
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    .line 596
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Llenovo/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 599
    :cond_1
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1
    .param p1, "defaultNavigationContentDescription"    # I

    .prologue
    .line 212
    iget v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    if-ne p1, v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iput p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 216
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(I)V

    goto :goto_0
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "defaultNavigationIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 224
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 225
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 227
    :cond_0
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 4
    .param p1, "newOpts"    # I

    .prologue
    const/4 v3, 0x0

    .line 435
    iget v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 436
    .local v1, "oldOpts":I
    xor-int v0, v1, p1

    .line 437
    .local v0, "changed":I
    iput p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 438
    if-eqz v0, :cond_3

    .line 439
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_0

    .line 440
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_4

    .line 441
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 442
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 448
    :cond_0
    :goto_0
    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_1

    .line 449
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 452
    :cond_1
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_2

    .line 453
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_5

    .line 454
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Llenovo/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Llenovo/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 462
    :cond_2
    :goto_1
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 463
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_6

    .line 464
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Llenovo/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 470
    :cond_3
    :goto_2
    return-void

    .line 444
    :cond_4
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v2, v3}, Llenovo/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 457
    :cond_5
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v2, v3}, Llenovo/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v2, v3}, Llenovo/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 466
    :cond_6
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Llenovo/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 567
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 568
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 569
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 573
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 574
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set dropdown selected position without an adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 578
    return-void
.end method

.method public setEmbeddedTabView(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V
    .locals 5
    .param p1, "tabView"    # Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    .prologue
    const/4 v4, -0x2

    .line 474
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    if-ne v1, v2, :cond_0

    .line 475
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1, v2}, Llenovo/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 477
    :cond_0
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    .line 478
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 479
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Llenovo/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 480
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llenovo/widget/Toolbar$LayoutParams;

    .line 481
    .local v0, "lp":Llenovo/widget/Toolbar$LayoutParams;
    iput v4, v0, Llenovo/widget/Toolbar$LayoutParams;->width:I

    .line 482
    iput v4, v0, Llenovo/widget/Toolbar$LayoutParams;->height:I

    .line 483
    const v1, 0x800053

    iput v1, v0, Llenovo/widget/Toolbar$LayoutParams;->gravity:I

    .line 484
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 486
    .end local v0    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    :cond_1
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 506
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 351
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lenovo/internal/widget/ViewUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 352
    return-void

    .line 351
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 357
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 358
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 362
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lenovo/internal/widget/ViewUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 363
    return-void

    .line 362
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 368
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 369
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 416
    new-instance v0, Llenovo/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v1}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Llenovo/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    .line 417
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuPresenter;->setId(I)V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Llenovo/widget/ActionMenuPresenter;->setCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 420
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    check-cast p1, Lcom/lenovo/internal/view/menu/MenuBuilder;

    .end local p1    # "menu":Landroid/view/Menu;
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1, v1}, Llenovo/widget/Toolbar;->setMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Llenovo/widget/ActionMenuPresenter;)V

    .line 421
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    .line 411
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 656
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 657
    return-void

    .line 656
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 650
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 651
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 652
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 643
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lenovo/internal/widget/ViewUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 646
    return-void

    .line 643
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 638
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 639
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 515
    iget v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 516
    .local v1, "oldMode":I
    if-eq p1, v1, :cond_1

    .line 517
    packed-switch v1, :pswitch_data_0

    .line 530
    :cond_0
    :goto_0
    iput p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 532
    packed-switch p1, :pswitch_data_1

    .line 549
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid navigation mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 519
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    if-ne v2, v3, :cond_0

    .line 520
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Llenovo/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 524
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    if-ne v2, v3, :cond_0

    .line 525
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Llenovo/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 536
    :pswitch_2
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 537
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v5}, Llenovo/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 552
    :cond_1
    :goto_1
    :pswitch_3
    return-void

    .line 540
    :pswitch_4
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 541
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2, v3, v5}, Llenovo/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 542
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llenovo/widget/Toolbar$LayoutParams;

    .line 543
    .local v0, "lp":Llenovo/widget/Toolbar$LayoutParams;
    iput v4, v0, Llenovo/widget/Toolbar$LayoutParams;->width:I

    .line 544
    iput v4, v0, Llenovo/widget/Toolbar$LayoutParams;->height:I

    .line 545
    const v2, 0x800053

    iput v2, v0, Llenovo/widget/Toolbar$LayoutParams;->gravity:I

    goto :goto_1

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 532
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public setSplitToolbar(Z)V
    .locals 2
    .param p1, "split"    # Z

    .prologue
    .line 329
    if-eqz p1, :cond_0

    .line 330
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot split an android.widget.Toolbar"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_0
    return-void
.end method

.method public setSplitView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "splitView"    # Landroid/view/ViewGroup;

    .prologue
    .line 325
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0
    .param p1, "splitWhenNarrow"    # Z

    .prologue
    .line 337
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 303
    iget v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0, p1}, Llenovo/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 306
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 285
    invoke-direct {p0, p1}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 286
    return-void
.end method

.method public setWindowCallback(Lcom/lenovo/internal/app/WindowCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/lenovo/internal/app/WindowCallback;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    .line 267
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    if-nez v0, :cond_0

    .line 273
    invoke-direct {p0, p1}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 275
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
