.class public Landroid/inputmethodservice/ExtractEditLayout;
.super Landroid/widget/LinearLayout;
.source "ExtractEditLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;
    }
.end annotation


# instance fields
.field mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

.field mEditButton:Landroid/widget/Button;

.field mExtractActionButton:Landroid/widget/Button;

.field private mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/ExtractEditLayout;)Lcom/android/internal/view/menu/MenuPopupHelper;
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/ExtractEditLayout;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;

    return-object v0
.end method

.method static synthetic access$002(Landroid/inputmethodservice/ExtractEditLayout;Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuPopupHelper;
    .locals 0
    .param p0, "x0"    # Landroid/inputmethodservice/ExtractEditLayout;
    .param p1, "x1"    # Lcom/android/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 44
    iput-object p1, p0, Landroid/inputmethodservice/ExtractEditLayout;->mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;

    return-object p1
.end method

.method static synthetic access$100(Landroid/inputmethodservice/ExtractEditLayout;)V
    .locals 0
    .param p0, "x0"    # Landroid/inputmethodservice/ExtractEditLayout;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/inputmethodservice/ExtractEditLayout;->dismissMenuPopupHelper()V

    return-void
.end method

.method private dismissMenuPopupHelper()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method public finishActionMode()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->finish()V

    .line 88
    :cond_0
    return-void
.end method

.method public isActionModeStarted()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, #android:id@inputExtractAction#t

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/ExtractEditLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mExtractActionButton:Landroid/widget/Button;

    const v0, #android:id@inputExtractEditButton#t

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/ExtractEditLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mEditButton:Landroid/widget/Button;

    .line 114
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mEditButton:Landroid/widget/Button;

    new-instance v1, Landroid/inputmethodservice/ExtractEditLayout$1;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/ExtractEditLayout$1;-><init>(Landroid/inputmethodservice/ExtractEditLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-direct {p0}, Landroid/inputmethodservice/ExtractEditLayout;->dismissMenuPopupHelper()V

    .line 98
    :cond_0
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3
    .param p1, "sourceView"    # Landroid/view/View;
    .param p2, "cb"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 62
    new-instance v0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    invoke-direct {v0, p0, p2}, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;-><init>(Landroid/inputmethodservice/ExtractEditLayout;Landroid/view/ActionMode$Callback;)V

    .line 63
    .local v0, "mode":Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->invalidate()V

    .line 65
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout;->mExtractActionButton:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 66
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout;->mEditButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 67
    iput-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    .line 68
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/ExtractEditLayout;->sendAccessibilityEvent(I)V

    .line 71
    .end local v0    # "mode":Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;
    :goto_0
    return-object v0

    .restart local v0    # "mode":Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
