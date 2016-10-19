.class public Lcom/lenovo/component/contexturalappbar/CABHeadBar;
.super Ljava/lang/Object;
.source "CABHeadBar.java"


# instance fields
.field private mActionBar:Landroid/view/View;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mDecor:Landroid/graphics/drawable/Drawable;

.field private mHeadBarSel:Landroid/widget/TextView;

.field private mHeadBarText:Landroid/widget/TextView;

.field private mHeadBarView:Landroid/widget/RelativeLayout;

.field private mInIcon:I

.field private mOutIcon:I

.field private mSetBackground:Z

.field private mStatusBarColor:I

.field private mUseDecor:Z

.field private mUseToolBar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mActionBar:Landroid/view/View;

    .line 23
    iput-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mUseDecor:Z

    .line 24
    iput-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mUseToolBar:Z

    .line 25
    iput-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mSetBackground:Z

    .line 31
    const v0, 0x9020051

    iput v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mInIcon:I

    .line 32
    const v0, 0x9020052

    iput v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mOutIcon:I

    .line 35
    iput-object p1, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->initHeadBarView()V

    .line 37
    return-void
.end method

.method private initHeadBarView()V
    .locals 3

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mSetBackground:Z

    .line 176
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x904000c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mHeadBarView:Landroid/widget/RelativeLayout;

    .line 177
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mHeadBarView:Landroid/widget/RelativeLayout;

    const v1, 0x90c002f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mHeadBarSel:Landroid/widget/TextView;

    .line 178
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mHeadBarView:Landroid/widget/RelativeLayout;

    const v1, 0x90c002e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mHeadBarText:Landroid/widget/TextView;

    .line 179
    return-void
.end method


# virtual methods
.method public getHeadBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mHeadBarView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public reHeadBackground()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    iget-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mSetBackground:Z

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mUseToolBar:Z

    if-eqz v0, :cond_3

    .line 149
    iget v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mOutIcon:I

    if-nez v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mActionBar:Landroid/view/View;

    check-cast v0, Landroid/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 164
    :goto_1
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mActionBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mActionBar:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 166
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mUseDecor:Z

    if-eqz v0, :cond_5

    .line 167
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mDecor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :goto_2
    iput-boolean v2, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mSetBackground:Z

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mActionBar:Landroid/view/View;

    check-cast v0, Landroid/widget/Toolbar;

    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mOutIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    goto :goto_1

    .line 154
    :cond_3
    iget v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mOutIcon:I

    if-eqz v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mOutIcon:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 157
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_1

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_1

    .line 169
    :cond_5
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mStatusBarColor:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_2
.end method

.method public setBackIcon(II)V
    .locals 2
    .param p1, "in"    # I
    .param p2, "out"    # I

    .prologue
    const/4 v1, -0x1

    .line 49
    if-ne p1, v1, :cond_0

    .line 50
    const v0, 0x9020051

    iput v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mInIcon:I

    .line 54
    :goto_0
    if-ne p2, v1, :cond_1

    .line 55
    const v0, 0x9020052

    iput v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mOutIcon:I

    .line 58
    :goto_1
    return-void

    .line 52
    :cond_0
    iput p1, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mInIcon:I

    goto :goto_0

    .line 57
    :cond_1
    iput p2, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mOutIcon:I

    goto :goto_1
.end method

.method public setHeadBackground()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x9070000

    const/4 v5, 0x1

    .line 96
    iget-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mSetBackground:Z

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mActionBar:Landroid/view/View;

    if-nez v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "action_bar"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mActionBar:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mActionBar:Landroid/view/View;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mUseToolBar:Z

    if-nez v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "action_bar"

    const-string v3, "id"

    iget-object v4, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mActionBar:Landroid/view/View;

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mActionBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 108
    iget-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mUseToolBar:Z

    if-eqz v0, :cond_6

    .line 109
    iget v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mInIcon:I

    if-nez v0, :cond_5

    .line 110
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mActionBar:Landroid/view/View;

    check-cast v0, Landroid/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 124
    :goto_1
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mActionBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 126
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_3

    .line 127
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mActionBar:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 131
    iget-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mUseDecor:Z

    if-eqz v0, :cond_8

    .line 132
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mDecor:Landroid/graphics/drawable/Drawable;

    .line 133
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mDecor:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_4

    .line 134
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mDecor:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mDecor:Landroid/graphics/drawable/Drawable;

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 141
    :goto_2
    iput-boolean v5, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mSetBackground:Z

    goto/16 :goto_0

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mActionBar:Landroid/view/View;

    check-cast v0, Landroid/widget/Toolbar;

    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mInIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    goto :goto_1

    .line 114
    :cond_6
    iget v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mInIcon:I

    if-eqz v0, :cond_7

    .line 115
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mInIcon:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 117
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto/16 :goto_1

    .line 119
    :cond_7
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto/16 :goto_1

    .line 137
    :cond_8
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v0

    iput v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mStatusBarColor:I

    .line 138
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_2
.end method

.method public setHeadBarSelAll(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mHeadBarSel:Landroid/widget/TextView;

    const v1, 0x9090002

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mHeadBarSel:Landroid/widget/TextView;

    const v1, 0x9090003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public setHeadBarSelAllEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mHeadBarSel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 82
    return-void
.end method

.method public setHeadBarSelAllVisiable(Z)V
    .locals 2
    .param p1, "visiable"    # Z

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mHeadBarSel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mHeadBarSel:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setHeadBarSelListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mHeadBarSel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method public setHeadBarText(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mHeadBarText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    return-void
.end method

.method public setHeadBarText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mHeadBarText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public setToolBar(Landroid/widget/Toolbar;)V
    .locals 1
    .param p1, "toolBar"    # Landroid/widget/Toolbar;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mActionBar:Landroid/view/View;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mUseToolBar:Z

    .line 42
    return-void
.end method

.method public useKitKatSolution(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/lenovo/component/contexturalappbar/CABHeadBar;->mUseDecor:Z

    .line 93
    return-void
.end method
