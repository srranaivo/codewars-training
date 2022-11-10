# Description:
# Deoxyribonucleic acid, DNA is the primary information storage molecule
# in biological systems. It is composed of four nucleic acid bases
# Guanine ('G'), Cytosine ('C'), Adenine ('A'), and Thymine ('T').

# Ribonucleic acid, RNA, is the primary messenger molecule in cells.
# RNA differs slightly from DNA its chemical structure and contains no Thymine.
# In RNA Thymine is replaced by another nucleic acid Uracil ('U').

# Create a function which translates a given DNA string into RNA.

# For example:

# "GCAT"  =>  "GCAU"
# The input string can be of arbitrary length - in particular, it may be empty.
# All input is guaranteed to be valid, i.e. each input string
# will only ever consist of 'G', 'C', 'A' and/or 'T'.

# My solution:
def dna_to_rna(dna)
  #your code here
  #on prend une string
  #on analyse chaque caractère
  #on transforme tous les caractères "T"
  #en caractère "U"
  dna.gsub(/T/, 'U')
end

# Best practice:
# def dna_to_rna(dna)
#   dna.gsub('T','U')
# end
