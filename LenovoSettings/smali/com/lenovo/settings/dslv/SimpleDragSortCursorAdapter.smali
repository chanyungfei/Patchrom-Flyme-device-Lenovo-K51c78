.class public Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;
.super Lcom/lenovo/settings/dslv/ResourceDragSortCursorAdapter;
.source "SimpleDragSortCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;,
        Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private mCursorToStringConverter:Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

.field protected mFrom:[I

.field mOriginalFrom:[Ljava/lang/String;

.field private mStringConversionColumn:I

.field protected mTo:[I

.field private mViewBinder:Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/settings/dslv/ResourceDragSortCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    .line 67
    iput-object p5, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    .line 68
    iput-object p4, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 69
    invoke-direct {p0, p3, p4}, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "flags"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/lenovo/settings/dslv/ResourceDragSortCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    .line 93
    iput-object p5, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    .line 94
    iput-object p4, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 95
    invoke-direct {p0, p3, p4}, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "from"    # [Ljava/lang/String;

    .prologue
    .line 314
    if-eqz p1, :cond_2

    .line 316
    array-length v0, p2

    .line 317
    .local v0, "count":I
    iget-object v2, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    array-length v2, v2

    if-eq v2, v0, :cond_1

    .line 318
    :cond_0
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    .line 320
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 321
    iget-object v2, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    aget-object v3, p2, v1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    .line 326
    :cond_3
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mViewBinder:Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter$ViewBinder;

    .line 125
    .local v0, "binder":Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter$ViewBinder;
    iget-object v8, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    array-length v2, v8

    .line 126
    .local v2, "count":I
    iget-object v3, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    .line 127
    .local v3, "from":[I
    iget-object v6, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    .line 129
    .local v6, "to":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_5

    .line 130
    aget v8, v6, v4

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 131
    .local v7, "v":Landroid/view/View;
    if-eqz v7, :cond_2

    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "bound":Z
    if-eqz v0, :cond_0

    .line 134
    aget v8, v3, v4

    invoke-interface {v0, v7, p3, v8}, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter$ViewBinder;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z

    move-result v1

    .line 137
    :cond_0
    if-nez v1, :cond_2

    .line 138
    aget v8, v3, v4

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "text":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 140
    const-string v5, ""

    .line 143
    :cond_1
    instance-of v8, v7, Landroid/widget/TextView;

    if-eqz v8, :cond_3

    .line 144
    check-cast v7, Landroid/widget/TextView;

    .end local v7    # "v":Landroid/view/View;
    invoke-virtual {p0, v7, v5}, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 129
    .end local v1    # "bound":Z
    .end local v5    # "text":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 145
    .restart local v1    # "bound":Z
    .restart local v5    # "text":Ljava/lang/String;
    .restart local v7    # "v":Landroid/view/View;
    :cond_3
    instance-of v8, v7, Landroid/widget/ImageView;

    if-eqz v8, :cond_4

    .line 146
    check-cast v7, Landroid/widget/ImageView;

    .end local v7    # "v":Landroid/view/View;
    invoke-virtual {p0, v7, v5}, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    .line 148
    .restart local v7    # "v":Landroid/view/View;
    :cond_4
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " view that can be bounds by this SimpleCursorAdapter"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 154
    .end local v1    # "bound":Z
    .end local v5    # "text":Ljava/lang/String;
    .end local v7    # "v":Landroid/view/View;
    :cond_5
    return-void
.end method

.method public changeCursorAndColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "from"    # [Ljava/lang/String;
    .param p3, "to"    # [I

    .prologue
    .line 349
    iput-object p2, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 350
    iput-object p3, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    .line 354
    iget-object v0, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 355
    invoke-super {p0, p1}, Lcom/lenovo/settings/dslv/ResourceDragSortCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 356
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mCursorToStringConverter:Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mCursorToStringConverter:Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    .line 299
    :cond_0
    iget v0, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 300
    iget v0, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 303
    :cond_1
    invoke-super {p0, p1}, Lcom/lenovo/settings/dslv/ResourceDragSortCursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getCursorToStringConverter()Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mCursorToStringConverter:Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

    return-object v0
.end method

.method public getStringConversionColumn()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    return v0
.end method

.method public getViewBinder()Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter$ViewBinder;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mViewBinder:Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter$ViewBinder;

    return-object v0
.end method

.method public setCursorToStringConverter(Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;)V
    .locals 0
    .param p1, "cursorToStringConverter"    # Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mCursorToStringConverter:Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

    .line 282
    return-void
.end method

.method public setStringConversionColumn(I)V
    .locals 0
    .param p1, "stringConversionColumn"    # I

    .prologue
    .line 249
    iput p1, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    .line 250
    return-void
.end method

.method public setViewBinder(Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter$ViewBinder;)V
    .locals 0
    .param p1, "viewBinder"    # Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter$ViewBinder;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mViewBinder:Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter$ViewBinder;

    .line 179
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 198
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/lenovo/settings/dslv/SimpleDragSortCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 334
    invoke-super {p0, p1}, Lcom/lenovo/settings/dslv/ResourceDragSortCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public updateData(II)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "flag"    # I

    .prologue
    .line 409
    return-void
.end method
