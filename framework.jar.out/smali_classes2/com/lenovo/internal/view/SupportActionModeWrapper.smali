.class public Lcom/lenovo/internal/view/SupportActionModeWrapper;
.super Landroid/view/ActionMode;
.source "SupportActionModeWrapper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/internal/view/SupportActionModeWrapper$CallbackWrapper;
    }
.end annotation


# instance fields
.field final mInflater:Landroid/view/MenuInflater;

.field final mWrappedObject:Llenovo/view/ActionMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llenovo/view/ActionMode;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "supportActionMode"    # Llenovo/view/ActionMode;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper;->mWrappedObject:Llenovo/view/ActionMode;

    .line 46
    new-instance v0, Lcom/lenovo/internal/view/SupportMenuInflater;

    invoke-direct {v0, p1}, Lcom/lenovo/internal/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper;->mInflater:Landroid/view/MenuInflater;

    .line 47
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper;->mWrappedObject:Llenovo/view/ActionMode;

    invoke-virtual {v0}, Llenovo/view/ActionMode;->finish()V

    .line 77
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper;->mWrappedObject:Llenovo/view/ActionMode;

    invoke-virtual {v0}, Llenovo/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper;->mWrappedObject:Llenovo/view/ActionMode;

    invoke-virtual {v0}, Llenovo/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/internal/view/menu/MenuWrapperFactory;->createMenuWrapper(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper;->mInflater:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper;->mWrappedObject:Llenovo/view/ActionMode;

    invoke-virtual {v0}, Llenovo/view/ActionMode;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper;->mWrappedObject:Llenovo/view/ActionMode;

    invoke-virtual {v0}, Llenovo/view/ActionMode;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper;->mWrappedObject:Llenovo/view/ActionMode;

    invoke-virtual {v0}, Llenovo/view/ActionMode;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper;->mWrappedObject:Llenovo/view/ActionMode;

    invoke-virtual {v0}, Llenovo/view/ActionMode;->getTitleOptionalHint()Z

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper;->mWrappedObject:Llenovo/view/ActionMode;

    invoke-virtual {v0}, Llenovo/view/ActionMode;->invalidate()V

    .line 72
    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper;->mWrappedObject:Llenovo/view/ActionMode;

    invoke-virtual {v0}, Llenovo/view/ActionMode;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper;->mWrappedObject:Llenovo/view/ActionMode;

    invoke-virtual {v0, p1}, Llenovo/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 112
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper;->mWrappedObject:Llenovo/view/ActionMode;

    invoke-virtual {v0, p1}, Llenovo/view/ActionMode;->setSubtitle(I)V

    .line 102
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper;->mWrappedObject:Llenovo/view/ActionMode;

    invoke-virtual {v0, p1}, Llenovo/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper;->mWrappedObject:Llenovo/view/ActionMode;

    invoke-virtual {v0, p1}, Llenovo/view/ActionMode;->setTag(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper;->mWrappedObject:Llenovo/view/ActionMode;

    invoke-virtual {v0, p1}, Llenovo/view/ActionMode;->setTitle(I)V

    .line 92
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper;->mWrappedObject:Llenovo/view/ActionMode;

    invoke-virtual {v0, p1}, Llenovo/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper;->mWrappedObject:Llenovo/view/ActionMode;

    invoke-virtual {v0, p1}, Llenovo/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 127
    return-void
.end method
