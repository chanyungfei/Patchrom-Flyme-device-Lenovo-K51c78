.class public interface abstract Lcom/lenovo/internal/view/SupportMenuItem;
.super Ljava/lang/Object;
.source "SupportMenuItem.java"

# interfaces
.implements Landroid/view/MenuItem;


# virtual methods
.method public abstract collapseActionView()Z
.end method

.method public abstract expandActionView()Z
.end method

.method public abstract getActionView()Landroid/view/View;
.end method

.method public abstract getSupportActionProvider()Llenovo/view/ActionProvider;
.end method

.method public abstract isActionViewExpanded()Z
.end method

.method public abstract setActionView(I)Landroid/view/MenuItem;
.end method

.method public abstract setActionView(Landroid/view/View;)Landroid/view/MenuItem;
.end method

.method public abstract setShowAsAction(I)V
.end method

.method public abstract setShowAsActionFlags(I)Landroid/view/MenuItem;
.end method

.method public abstract setSupportActionProvider(Llenovo/view/ActionProvider;)Lcom/lenovo/internal/view/SupportMenuItem;
.end method

.method public abstract setSupportOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Lcom/lenovo/internal/view/SupportMenuItem;
.end method
