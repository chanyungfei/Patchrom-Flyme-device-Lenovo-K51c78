.class public Lcom/lenovo/internal/view/SupportActionModeWrapper$CallbackWrapper;
.super Ljava/lang/Object;
.source "SupportActionModeWrapper.java"

# interfaces
.implements Llenovo/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/view/SupportActionModeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackWrapper"
.end annotation


# instance fields
.field final mActionModes:Llenovo/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llenovo/util/SimpleArrayMap",
            "<",
            "Llenovo/view/ActionMode;",
            "Lcom/lenovo/internal/view/SupportActionModeWrapper;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mIsEditorCallBack:Z

.field final mWrappedCallback:Landroid/view/ActionMode$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "supportCallback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;

    .line 146
    iput-object p2, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    .line 147
    new-instance v0, Llenovo/util/SimpleArrayMap;

    invoke-direct {v0}, Llenovo/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper$CallbackWrapper;->mActionModes:Llenovo/util/SimpleArrayMap;

    .line 148
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.widget.Editor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper$CallbackWrapper;->mIsEditorCallBack:Z

    .line 149
    return-void
.end method

.method private getActionModeWrapper(Llenovo/view/ActionMode;)Landroid/view/ActionMode;
    .locals 3
    .param p1, "mode"    # Llenovo/view/ActionMode;

    .prologue
    .line 177
    iget-object v2, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper$CallbackWrapper;->mActionModes:Llenovo/util/SimpleArrayMap;

    invoke-virtual {v2, p1}, Llenovo/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/view/SupportActionModeWrapper;

    .line 178
    .local v0, "wrapper":Lcom/lenovo/internal/view/SupportActionModeWrapper;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 186
    .end local v0    # "wrapper":Lcom/lenovo/internal/view/SupportActionModeWrapper;
    .local v1, "wrapper":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 184
    .end local v1    # "wrapper":Ljava/lang/Object;
    .restart local v0    # "wrapper":Lcom/lenovo/internal/view/SupportActionModeWrapper;
    :cond_0
    new-instance v0, Lcom/lenovo/internal/view/SupportActionModeWrapper;

    .end local v0    # "wrapper":Lcom/lenovo/internal/view/SupportActionModeWrapper;
    iget-object v2, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/lenovo/internal/view/SupportActionModeWrapper;-><init>(Landroid/content/Context;Llenovo/view/ActionMode;)V

    .line 185
    .restart local v0    # "wrapper":Lcom/lenovo/internal/view/SupportActionModeWrapper;
    iget-object v2, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper$CallbackWrapper;->mActionModes:Llenovo/util/SimpleArrayMap;

    invoke-virtual {v2, p1, v0}, Llenovo/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 186
    .restart local v1    # "wrapper":Ljava/lang/Object;
    goto :goto_0
.end method


# virtual methods
.method public isEditorCallBack()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper$CallbackWrapper;->mIsEditorCallBack:Z

    return v0
.end method

.method public onActionItemClicked(Llenovo/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "mode"    # Llenovo/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-direct {p0, p1}, Lcom/lenovo/internal/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Llenovo/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-static {p2}, Lcom/lenovo/internal/view/menu/MenuWrapperFactory;->createMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Llenovo/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Llenovo/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-direct {p0, p1}, Lcom/lenovo/internal/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Llenovo/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-static {p2}, Lcom/lenovo/internal/view/menu/MenuWrapperFactory;->createMenuWrapper(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Llenovo/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Llenovo/view/ActionMode;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-direct {p0, p1}, Lcom/lenovo/internal/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Llenovo/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 173
    return-void
.end method

.method public onPrepareActionMode(Llenovo/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Llenovo/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-direct {p0, p1}, Lcom/lenovo/internal/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Llenovo/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-static {p2}, Lcom/lenovo/internal/view/menu/MenuWrapperFactory;->createMenuWrapper(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
