.class public interface abstract Llenovo/view/ActionMode$Callback;
.super Ljava/lang/Object;
.source "ActionMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract isEditorCallBack()Z
.end method

.method public abstract onActionItemClicked(Llenovo/view/ActionMode;Landroid/view/MenuItem;)Z
.end method

.method public abstract onCreateActionMode(Llenovo/view/ActionMode;Landroid/view/Menu;)Z
.end method

.method public abstract onDestroyActionMode(Llenovo/view/ActionMode;)V
.end method

.method public abstract onPrepareActionMode(Llenovo/view/ActionMode;Landroid/view/Menu;)Z
.end method
