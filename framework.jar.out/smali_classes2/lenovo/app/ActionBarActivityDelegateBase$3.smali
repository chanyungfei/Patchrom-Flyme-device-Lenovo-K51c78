.class Llenovo/app/ActionBarActivityDelegateBase$3;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Lcom/lenovo/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/app/ActionBarActivityDelegateBase;->ensureSubDecor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/app/ActionBarActivityDelegateBase;


# direct methods
.method constructor <init>(Llenovo/app/ActionBarActivityDelegateBase;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Llenovo/app/ActionBarActivityDelegateBase$3;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFitSystemWindows(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 339
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$3;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    # invokes: Llenovo/app/ActionBarActivityDelegateBase;->updateStatusGuard(I)I
    invoke-static {v0, v1}, Llenovo/app/ActionBarActivityDelegateBase;->access$300(Llenovo/app/ActionBarActivityDelegateBase;I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 340
    return-void
.end method
