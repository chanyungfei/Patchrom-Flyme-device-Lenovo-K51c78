.class Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
.super Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;
.source "AccessibilityIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LineTextSegmentIterator"
.end annotation


# static fields
.field protected static final DIRECTION_END:I = 0x1

.field protected static final DIRECTION_START:I = -0x1

.field private static sLineInstance:Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;


# instance fields
.field protected mLayout:Landroid/text/Layout;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->sLineInstance:Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    invoke-direct {v0}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;-><init>()V

    sput-object v0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->sLineInstance:Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    .line 47
    :cond_0
    sget-object v0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->sLineInstance:Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    return-object v0
.end method


# virtual methods
.method public following(I)[I
    .locals 9
    .param p1, "offset"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 57
    iget-object v6, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 58
    .local v4, "textLegth":I
    if-gtz v4, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object v5

    .line 61
    :cond_1
    iget-object v6, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge p1, v6, :cond_0

    .line 65
    if-gez p1, :cond_2

    .line 66
    iget-object v6, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 75
    .local v2, "nextLine":I
    :goto_1
    iget-object v6, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 78
    invoke-virtual {p0, v2, v8}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v3

    .line 79
    .local v3, "start":I
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 80
    .local v1, "end":I
    invoke-virtual {p0, v3, v1}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getRange(II)[I

    move-result-object v5

    goto :goto_0

    .line 68
    .end local v1    # "end":I
    .end local v2    # "nextLine":I
    .end local v3    # "start":I
    :cond_2
    iget-object v6, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 69
    .local v0, "currentLine":I
    invoke-virtual {p0, v0, v8}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v6

    if-ne v6, p1, :cond_3

    .line 70
    move v2, v0

    .restart local v2    # "nextLine":I
    goto :goto_1

    .line 72
    .end local v2    # "nextLine":I
    :cond_3
    add-int/lit8 v2, v0, 0x1

    .restart local v2    # "nextLine":I
    goto :goto_1
.end method

.method protected getLineEdgeIndex(II)I
    .locals 2
    .param p1, "lineNumber"    # I
    .param p2, "direction"    # I

    .prologue
    .line 112
    iget-object v1, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 113
    .local v0, "paragraphDirection":I
    mul-int v1, p2, v0

    if-gez v1, :cond_0

    .line 114
    iget-object v1, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 116
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public initialize(Landroid/text/Spannable;Landroid/text/Layout;)V
    .locals 1
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "layout"    # Landroid/text/Layout;

    .prologue
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    .line 53
    return-void
.end method

.method public preceding(I)[I
    .locals 9
    .param p1, "offset"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 85
    iget-object v6, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 86
    .local v4, "textLegth":I
    if-gtz v4, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v5

    .line 89
    :cond_1
    if-lez p1, :cond_0

    .line 93
    iget-object v6, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le p1, v6, :cond_2

    .line 94
    iget-object v6, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    iget-object v7, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 103
    .local v2, "previousLine":I
    :goto_1
    if-ltz v2, :cond_0

    .line 106
    const/4 v5, -0x1

    invoke-virtual {p0, v2, v5}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v3

    .line 107
    .local v3, "start":I
    invoke-virtual {p0, v2, v8}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 108
    .local v1, "end":I
    invoke-virtual {p0, v3, v1}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getRange(II)[I

    move-result-object v5

    goto :goto_0

    .line 96
    .end local v1    # "end":I
    .end local v2    # "previousLine":I
    .end local v3    # "start":I
    :cond_2
    iget-object v6, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 97
    .local v0, "currentLine":I
    invoke-virtual {p0, v0, v8}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-ne v6, p1, :cond_3

    .line 98
    move v2, v0

    .restart local v2    # "previousLine":I
    goto :goto_1

    .line 100
    .end local v2    # "previousLine":I
    :cond_3
    add-int/lit8 v2, v0, -0x1

    .restart local v2    # "previousLine":I
    goto :goto_1
.end method
