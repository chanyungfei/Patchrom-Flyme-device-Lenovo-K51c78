.class Lcom/flyme/deviceoriginalsettings/UserDictionarySettings$MyAdapter$1;
.super Ljava/lang/Object;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/UserDictionarySettings$MyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/UserDictionarySettings$MyAdapter;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/UserDictionarySettings$MyAdapter;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/UserDictionarySettings$MyAdapter$1;->this$0:Lcom/flyme/deviceoriginalsettings/UserDictionarySettings$MyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "columnIndex"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 274
    const-string v1, "input"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "columnIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    if-ne p3, v5, :cond_1

    .line 276
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "shortcut":Ljava/lang/String;
    const-string v1, "input"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shortcut = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    const-string v1, "input"

    const-string v2, "shortcut is Empty "

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 286
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 287
    const/4 v1, 0x1

    .line 290
    .end local v0    # "shortcut":Ljava/lang/String;
    :goto_1
    return v1

    .line 282
    .restart local v0    # "shortcut":Ljava/lang/String;
    :cond_0
    const-string v1, "input"

    const-string v3, "shortcut is not Empty "

    invoke-static {v1, v3}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    .line 283
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "shortcut":Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 290
    goto :goto_1
.end method
